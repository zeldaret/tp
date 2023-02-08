lbl_80CFEDFC:
/* 80CFEDFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CFEE00  7C 08 02 A6 */	mflr r0
/* 80CFEE04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CFEE08  39 61 00 20 */	addi r11, r1, 0x20
/* 80CFEE0C  4B 66 33 CD */	bl _savegpr_28
/* 80CFEE10  7C 7C 1B 78 */	mr r28, r3
/* 80CFEE14  3B E0 00 00 */	li r31, 0
/* 80CFEE18  3B C0 00 00 */	li r30, 0
/* 80CFEE1C  3B A0 00 00 */	li r29, 0
/* 80CFEE20  88 03 05 D8 */	lbz r0, 0x5d8(r3)
/* 80CFEE24  28 00 00 00 */	cmplwi r0, 0
/* 80CFEE28  41 82 00 3C */	beq lbl_80CFEE64
/* 80CFEE2C  80 1C 05 C0 */	lwz r0, 0x5c0(r28)
/* 80CFEE30  1C 80 00 38 */	mulli r4, r0, 0x38
/* 80CFEE34  3C 60 80 D0 */	lis r3, M_attr__Q212daObjSwpush25Act_c@ha /* 0x80CFFC00@ha */
/* 80CFEE38  38 03 FC 00 */	addi r0, r3, M_attr__Q212daObjSwpush25Act_c@l /* 0x80CFFC00@l */
/* 80CFEE3C  7C 60 22 14 */	add r3, r0, r4
/* 80CFEE40  80 03 00 04 */	lwz r0, 4(r3)
/* 80CFEE44  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CFEE48  41 82 00 18 */	beq lbl_80CFEE60
/* 80CFEE4C  88 1C 05 DE */	lbz r0, 0x5de(r28)
/* 80CFEE50  28 00 00 00 */	cmplwi r0, 0
/* 80CFEE54  41 82 00 10 */	beq lbl_80CFEE64
/* 80CFEE58  3B A0 00 01 */	li r29, 1
/* 80CFEE5C  48 00 00 08 */	b lbl_80CFEE64
lbl_80CFEE60:
/* 80CFEE60  3B A0 00 01 */	li r29, 1
lbl_80CFEE64:
/* 80CFEE64  88 1C 05 D4 */	lbz r0, 0x5d4(r28)
/* 80CFEE68  28 00 00 00 */	cmplwi r0, 0
/* 80CFEE6C  41 82 00 2C */	beq lbl_80CFEE98
/* 80CFEE70  88 1C 05 D5 */	lbz r0, 0x5d5(r28)
/* 80CFEE74  28 00 00 00 */	cmplwi r0, 0
/* 80CFEE78  40 82 00 20 */	bne lbl_80CFEE98
/* 80CFEE7C  A8 1C 05 E0 */	lha r0, 0x5e0(r28)
/* 80CFEE80  2C 00 00 00 */	cmpwi r0, 0
/* 80CFEE84  41 81 00 14 */	bgt lbl_80CFEE98
/* 80CFEE88  38 00 00 1E */	li r0, 0x1e
/* 80CFEE8C  B0 1C 05 E0 */	sth r0, 0x5e0(r28)
/* 80CFEE90  3B E0 00 01 */	li r31, 1
/* 80CFEE94  48 00 00 18 */	b lbl_80CFEEAC
lbl_80CFEE98:
/* 80CFEE98  A8 7C 05 E0 */	lha r3, 0x5e0(r28)
/* 80CFEE9C  2C 03 00 00 */	cmpwi r3, 0
/* 80CFEEA0  40 81 00 0C */	ble lbl_80CFEEAC
/* 80CFEEA4  38 03 FF FF */	addi r0, r3, -1
/* 80CFEEA8  B0 1C 05 E0 */	sth r0, 0x5e0(r28)
lbl_80CFEEAC:
/* 80CFEEAC  7F 83 E3 78 */	mr r3, r28
/* 80CFEEB0  38 80 00 08 */	li r4, 8
/* 80CFEEB4  38 A0 00 08 */	li r5, 8
/* 80CFEEB8  48 00 0D 19 */	bl func_80CFFBD0
/* 80CFEEBC  7C 64 1B 78 */	mr r4, r3
/* 80CFEEC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CFEEC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CFEEC8  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80CFEECC  7C 05 07 74 */	extsb r5, r0
/* 80CFEED0  4B 33 64 91 */	bl isSwitch__10dSv_info_cCFii
/* 80CFEED4  30 03 FF FF */	addic r0, r3, -1
/* 80CFEED8  7C 00 19 10 */	subfe r0, r0, r3
/* 80CFEEDC  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80CFEEE0  80 1C 05 C0 */	lwz r0, 0x5c0(r28)
/* 80CFEEE4  1C 80 00 38 */	mulli r4, r0, 0x38
/* 80CFEEE8  3C 60 80 D0 */	lis r3, M_attr__Q212daObjSwpush25Act_c@ha /* 0x80CFFC00@ha */
/* 80CFEEEC  38 03 FC 00 */	addi r0, r3, M_attr__Q212daObjSwpush25Act_c@l /* 0x80CFFC00@l */
/* 80CFEEF0  7C 60 22 14 */	add r3, r0, r4
/* 80CFEEF4  80 83 00 04 */	lwz r4, 4(r3)
/* 80CFEEF8  54 83 E7 FE */	rlwinm r3, r4, 0x1c, 0x1f, 0x1f
/* 80CFEEFC  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80CFEF00  40 82 00 2C */	bne lbl_80CFEF2C
/* 80CFEF04  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 80CFEF08  41 82 00 40 */	beq lbl_80CFEF48
/* 80CFEF0C  28 05 00 00 */	cmplwi r5, 0
/* 80CFEF10  41 82 00 0C */	beq lbl_80CFEF1C
/* 80CFEF14  28 03 00 00 */	cmplwi r3, 0
/* 80CFEF18  41 82 00 14 */	beq lbl_80CFEF2C
lbl_80CFEF1C:
/* 80CFEF1C  28 05 00 00 */	cmplwi r5, 0
/* 80CFEF20  40 82 00 28 */	bne lbl_80CFEF48
/* 80CFEF24  28 03 00 00 */	cmplwi r3, 0
/* 80CFEF28  41 82 00 20 */	beq lbl_80CFEF48
lbl_80CFEF2C:
/* 80CFEF2C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80CFEF30  41 82 00 0C */	beq lbl_80CFEF3C
/* 80CFEF34  38 00 00 01 */	li r0, 1
/* 80CFEF38  98 1C 05 DF */	stb r0, 0x5df(r28)
lbl_80CFEF3C:
/* 80CFEF3C  3B C0 00 01 */	li r30, 1
/* 80CFEF40  7F 83 E3 78 */	mr r3, r28
/* 80CFEF44  48 00 00 41 */	bl mode_u_l_init__Q212daObjSwpush25Act_cFv
lbl_80CFEF48:
/* 80CFEF48  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80CFEF4C  41 82 00 10 */	beq lbl_80CFEF5C
/* 80CFEF50  7F 83 E3 78 */	mr r3, r28
/* 80CFEF54  48 00 04 75 */	bl demo_reqSw_init__Q212daObjSwpush25Act_cFv
/* 80CFEF58  48 00 00 14 */	b lbl_80CFEF6C
lbl_80CFEF5C:
/* 80CFEF5C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80CFEF60  41 82 00 0C */	beq lbl_80CFEF6C
/* 80CFEF64  7F 83 E3 78 */	mr r3, r28
/* 80CFEF68  48 00 02 F5 */	bl demo_reqPause_init__Q212daObjSwpush25Act_cFv
lbl_80CFEF6C:
/* 80CFEF6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80CFEF70  4B 66 32 B5 */	bl _restgpr_28
/* 80CFEF74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CFEF78  7C 08 03 A6 */	mtlr r0
/* 80CFEF7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CFEF80  4E 80 00 20 */	blr 
