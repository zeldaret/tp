lbl_80B021A0:
/* 80B021A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B021A4  7C 08 02 A6 */	mflr r0
/* 80B021A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B021AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B021B0  93 C1 00 08 */	stw r30, 8(r1)
/* 80B021B4  7C 7E 1B 78 */	mr r30, r3
/* 80B021B8  7C 9F 23 78 */	mr r31, r4
/* 80B021BC  4B 51 6B 25 */	bl fopAc_IsActor__FPv
/* 80B021C0  2C 03 00 00 */	cmpwi r3, 0
/* 80B021C4  41 82 00 28 */	beq lbl_80B021EC
/* 80B021C8  A8 1E 00 08 */	lha r0, 8(r30)
/* 80B021CC  2C 00 01 08 */	cmpwi r0, 0x108
/* 80B021D0  41 82 00 10 */	beq lbl_80B021E0
/* 80B021D4  88 1E 04 9A */	lbz r0, 0x49a(r30)
/* 80B021D8  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80B021DC  41 82 00 10 */	beq lbl_80B021EC
lbl_80B021E0:
/* 80B021E0  7F E3 FB 78 */	mr r3, r31
/* 80B021E4  7F C4 F3 78 */	mr r4, r30
/* 80B021E8  4B FF FE 95 */	bl checkRangeOfTake__FP10fopAc_ac_cP10fopAc_ac_c
lbl_80B021EC:
/* 80B021EC  38 60 00 00 */	li r3, 0
/* 80B021F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B021F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B021F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B021FC  7C 08 03 A6 */	mtlr r0
/* 80B02200  38 21 00 10 */	addi r1, r1, 0x10
/* 80B02204  4E 80 00 20 */	blr 
