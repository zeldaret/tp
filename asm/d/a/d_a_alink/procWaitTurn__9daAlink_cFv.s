lbl_800C3B1C:
/* 800C3B1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C3B20  7C 08 02 A6 */	mflr r0
/* 800C3B24  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C3B28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C3B2C  93 C1 00 08 */	stw r30, 8(r1)
/* 800C3B30  7C 7E 1B 78 */	mr r30, r3
/* 800C3B34  38 7E 33 98 */	addi r3, r30, 0x3398
/* 800C3B38  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C3B3C  3C 80 80 39 */	lis r4, m__18daAlinkHIO_move_c0@ha
/* 800C3B40  38 84 D6 BC */	addi r4, r4, m__18daAlinkHIO_move_c0@l
/* 800C3B44  C0 44 00 38 */	lfs f2, 0x38(r4)
/* 800C3B48  48 1A CB F9 */	bl cLib_chaseF__FPfff
/* 800C3B4C  7F C3 F3 78 */	mr r3, r30
/* 800C3B50  4B FF 64 01 */	bl checkGroundSpecialMode__9daAlink_cFv
/* 800C3B54  2C 03 00 00 */	cmpwi r3, 0
/* 800C3B58  41 82 00 0C */	beq lbl_800C3B64
/* 800C3B5C  38 60 00 01 */	li r3, 1
/* 800C3B60  48 00 00 C4 */	b lbl_800C3C24
lbl_800C3B64:
/* 800C3B64  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 800C3B68  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 800C3B6C  41 82 00 10 */	beq lbl_800C3B7C
/* 800C3B70  7F C3 F3 78 */	mr r3, r30
/* 800C3B74  48 00 48 ED */	bl procFloorDownReboundInit__9daAlink_cFv
/* 800C3B78  48 00 00 AC */	b lbl_800C3C24
lbl_800C3B7C:
/* 800C3B7C  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 800C3B80  A8 9E 30 0E */	lha r4, 0x300e(r30)
/* 800C3B84  38 A0 00 1E */	li r5, 0x1e
/* 800C3B88  38 C0 3C DF */	li r6, 0x3cdf
/* 800C3B8C  38 E0 1F 40 */	li r7, 0x1f40
/* 800C3B90  48 1A C9 B1 */	bl cLib_addCalcAngleS__FPsssss
/* 800C3B94  7C 7F 1B 78 */	mr r31, r3
/* 800C3B98  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800C3B9C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800C3BA0  7F C3 F3 78 */	mr r3, r30
/* 800C3BA4  4B FF 61 89 */	bl checkNextActionFromButton__9daAlink_cFv
/* 800C3BA8  2C 03 00 00 */	cmpwi r3, 0
/* 800C3BAC  41 82 00 0C */	beq lbl_800C3BB8
/* 800C3BB0  38 60 00 01 */	li r3, 1
/* 800C3BB4  48 00 00 70 */	b lbl_800C3C24
lbl_800C3BB8:
/* 800C3BB8  7F E0 07 35 */	extsh. r0, r31
/* 800C3BBC  40 82 00 64 */	bne lbl_800C3C20
/* 800C3BC0  7F C3 F3 78 */	mr r3, r30
/* 800C3BC4  48 05 20 5D */	bl checkEventRun__9daAlink_cCFv
/* 800C3BC8  2C 03 00 00 */	cmpwi r3, 0
/* 800C3BCC  41 82 00 48 */	beq lbl_800C3C14
/* 800C3BD0  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 800C3BD4  28 00 00 05 */	cmplwi r0, 5
/* 800C3BD8  40 82 00 1C */	bne lbl_800C3BF4
/* 800C3BDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800C3BE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800C3BE4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800C3BE8  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 800C3BEC  4B F8 45 91 */	bl cutEnd__16dEvent_manager_cFi
/* 800C3BF0  48 00 00 30 */	b lbl_800C3C20
lbl_800C3BF4:
/* 800C3BF4  7F C3 F3 78 */	mr r3, r30
/* 800C3BF8  38 80 00 00 */	li r4, 0
/* 800C3BFC  4B FF 64 D5 */	bl checkNextAction__9daAlink_cFi
/* 800C3C00  2C 03 00 00 */	cmpwi r3, 0
/* 800C3C04  40 82 00 1C */	bne lbl_800C3C20
/* 800C3C08  7F C3 F3 78 */	mr r3, r30
/* 800C3C0C  4B FF 1C E1 */	bl checkWaitAction__9daAlink_cFv
/* 800C3C10  48 00 00 10 */	b lbl_800C3C20
lbl_800C3C14:
/* 800C3C14  7F C3 F3 78 */	mr r3, r30
/* 800C3C18  38 80 00 00 */	li r4, 0
/* 800C3C1C  4B FF 64 B5 */	bl checkNextAction__9daAlink_cFi
lbl_800C3C20:
/* 800C3C20  38 60 00 01 */	li r3, 1
lbl_800C3C24:
/* 800C3C24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C3C28  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C3C2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C3C30  7C 08 03 A6 */	mtlr r0
/* 800C3C34  38 21 00 10 */	addi r1, r1, 0x10
/* 800C3C38  4E 80 00 20 */	blr 
