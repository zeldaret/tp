lbl_80804B38:
/* 80804B38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80804B3C  7C 08 02 A6 */	mflr r0
/* 80804B40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80804B44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80804B48  7C 7F 1B 78 */	mr r31, r3
/* 80804B4C  4B 81 41 94 */	b fopAc_IsActor__FPv
/* 80804B50  2C 03 00 00 */	cmpwi r3, 0
/* 80804B54  41 82 00 44 */	beq lbl_80804B98
/* 80804B58  A8 1F 00 08 */	lha r0, 8(r31)
/* 80804B5C  2C 00 00 FE */	cmpwi r0, 0xfe
/* 80804B60  40 82 00 38 */	bne lbl_80804B98
/* 80804B64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80804B68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80804B6C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80804B70  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 80804B74  40 82 00 24 */	bne lbl_80804B98
/* 80804B78  4B 95 AD 24 */	b checkBoomerangCharge__9daPy_py_cFv
/* 80804B7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80804B80  41 82 00 18 */	beq lbl_80804B98
/* 80804B84  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80804B88  28 00 00 01 */	cmplwi r0, 1
/* 80804B8C  40 82 00 0C */	bne lbl_80804B98
/* 80804B90  7F E3 FB 78 */	mr r3, r31
/* 80804B94  48 00 00 08 */	b lbl_80804B9C
lbl_80804B98:
/* 80804B98  38 60 00 00 */	li r3, 0
lbl_80804B9C:
/* 80804B9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80804BA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80804BA4  7C 08 03 A6 */	mtlr r0
/* 80804BA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80804BAC  4E 80 00 20 */	blr 
