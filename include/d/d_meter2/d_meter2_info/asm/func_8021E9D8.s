/* 8021E9D8 0021B918  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8021E9DC 0021B91C  7C 08 02 A6 */ mflr r0
/* 8021E9E0 0021B920  90 01 00 14 */ stw r0, 0x14(r1)
/* 8021E9E4 0021B924  3C 60 80 43 */ lis r3, g_meter2_info@ha
/* 8021E9E8 0021B928  38 63 01 88 */ addi r3, r3, g_meter2_info@l
/* 8021E9EC 0021B92C  4B FF D3 F1 */ bl __ct__13dMeter2Info_cFv
/*.global __dt__13dMeter2Info_cFv*/
/* 8021E9F0 0021B930  3C 80 80 22 */ lis r4, __dt__13dMeter2Info_cFv@ha
/*.global __dt__13dMeter2Info_cFv*/
/* 8021E9F4 0021B934  38 84 BE 20 */ addi r4, r4, __dt__13dMeter2Info_cFv@l
/* 8021E9F8 0021B938  3C A0 80 43 */ lis r5, lbl_80430178@ha
/* 8021E9FC 0021B93C  38 A5 01 78 */ addi r5, r5, lbl_80430178@l
/* 8021EA00 0021B940  48 14 32 25 */ bl func_80361C24
/* 8021EA04 0021B944  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8021EA08 0021B948  7C 08 03 A6 */ mtlr r0
/* 8021EA0C 0021B94C  38 21 00 10 */ addi r1, r1, 0x10
/* 8021EA10 0021B950  4E 80 00 20 */ blr
