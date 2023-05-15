#pragma once
#include "J2534_v0404.h"
#include "panda.h"

/*A move convenient container for J2534 Messages than the static buffer provided by default.*/
class J2534Frame {
public:
	J2534Frame(unsigned long ProtocolID, unsigned long RxStatus=0, unsigned long TxFlags=0, unsigned long Timestamp=0) :
		ProtocolID(ProtocolID), RxStatus(RxStatus), TxFlags(TxFlags), Timestamp(Timestamp), ExtraDataIndex(0), Data("") { };

	J2534Frame(const can_frame& msg_in, bool rx) {
		ProtocolID = CAN;
		ExtraDataIndex = msg_in.dat.size() + 4;
		Data.reserve(msg_in.dat.size() + 4);
		Data += msg_in.address >> 24;
		Data += (msg_in.address >> 16) & 0xFF;
		Data += (msg_in.address >> 8) & 0xFF;
		Data += msg_in.address & 0xFF;
		Data += std::string((char*)&msg_in.dat[0], msg_in.dat.size());
		Timestamp = 0;
		TxFlags = 0;
		RxStatus = CAN_29BIT_ID | rx ? TX_MSG_TYPE : 0;
	}

	J2534Frame(unsigned long protocol, const KLineData& msg_in) {
		ProtocolID = protocol;
		//ExtraDataIndex = msg_in.data.size() - (msg_in.valid ? 1 : 0);
		//Data = msg_in.data;
		Timestamp = 0;
		TxFlags = 0;
		RxStatus = 0;
	}

	J2534Frame(const PASSTHRU_MSG& msg) {
		this->ProtocolID = msg.ProtocolID;
		this->RxStatus = msg.RxStatus;
		this->TxFlags = msg.TxFlags;
		this->Timestamp = msg.Timestamp;
		this->ExtraDataIndex = msg.ExtraDataIndex;
		this->Data = std::string((const char*)msg.Data, msg.DataSize);
	}

	J2534Frame() {
		this->ProtocolID = 0;
		this->RxStatus = 0;
		this->TxFlags = 0;
		this->Timestamp = 0;
		this->ExtraDataIndex = 0;
	}

	unsigned long	ProtocolID;
	unsigned long	RxStatus;
	unsigned long	TxFlags;
	unsigned long	Timestamp;
	unsigned long	ExtraDataIndex;
	std::string		Data;
};
