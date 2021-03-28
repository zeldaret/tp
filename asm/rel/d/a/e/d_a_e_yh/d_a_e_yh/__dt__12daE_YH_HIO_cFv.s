lbl_80803D48:
/* 80803D48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80803D4C  7C 08 02 A6 */	mflr r0
/* 80803D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80803D54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80803D58  7C 7F 1B 79 */	or. r31, r3, r3
/* 80803D5C  41 82 00 1C */	beq lbl_80803D78
/* 80803D60  3C A0 80 80 */	lis r5, __vt__12daE_YH_HIO_c@ha
/* 80803D64  38 05 47 04 */	addi r0, r5, __vt__12daE_YH_HIO_c@l
/* 80803D68  90 1F 00 00 */	stw r0, 0(r31)
/* 80803D6C  7C 80 07 35 */	extsh. r0, r4
/* 80803D70  40 81 00 08 */	ble lbl_80803D78
/* 80803D74  4B AC AF C8 */	b __dl__FPv
lbl_80803D78:
/* 80803D78  7F E3 FB 78 */	mr r3, r31
/* 80803D7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80803D80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80803D84  7C 08 03 A6 */	mtlr r0
/* 80803D88  38 21 00 10 */	addi r1, r1, 0x10
/* 80803D8C  4E 80 00 20 */	blr 
