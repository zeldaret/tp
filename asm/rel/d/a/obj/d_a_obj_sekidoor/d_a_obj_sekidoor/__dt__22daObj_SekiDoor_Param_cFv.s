lbl_80CCD9AC:
/* 80CCD9AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCD9B0  7C 08 02 A6 */	mflr r0
/* 80CCD9B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCD9B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCD9BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CCD9C0  41 82 00 1C */	beq lbl_80CCD9DC
/* 80CCD9C4  3C A0 80 CD */	lis r5, __vt__22daObj_SekiDoor_Param_c@ha
/* 80CCD9C8  38 05 DA EC */	addi r0, r5, __vt__22daObj_SekiDoor_Param_c@l
/* 80CCD9CC  90 1F 00 00 */	stw r0, 0(r31)
/* 80CCD9D0  7C 80 07 35 */	extsh. r0, r4
/* 80CCD9D4  40 81 00 08 */	ble lbl_80CCD9DC
/* 80CCD9D8  4B 60 13 64 */	b __dl__FPv
lbl_80CCD9DC:
/* 80CCD9DC  7F E3 FB 78 */	mr r3, r31
/* 80CCD9E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCD9E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCD9E8  7C 08 03 A6 */	mtlr r0
/* 80CCD9EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCD9F0  4E 80 00 20 */	blr 
