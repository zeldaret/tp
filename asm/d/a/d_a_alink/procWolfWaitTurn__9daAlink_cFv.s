lbl_8012DDB4:
/* 8012DDB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012DDB8  7C 08 02 A6 */	mflr r0
/* 8012DDBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012DDC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012DDC4  93 C1 00 08 */	stw r30, 8(r1)
/* 8012DDC8  7C 7E 1B 78 */	mr r30, r3
/* 8012DDCC  38 7E 33 98 */	addi r3, r30, 0x3398
/* 8012DDD0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8012DDD4  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 8012DDD8  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 8012DDDC  41 82 00 14 */	beq lbl_8012DDF0
/* 8012DDE0  3C 80 80 39 */	lis r4, m__20daAlinkHIO_wlMove_c0@ha /* 0x8038EE28@ha */
/* 8012DDE4  38 84 EE 28 */	addi r4, r4, m__20daAlinkHIO_wlMove_c0@l /* 0x8038EE28@l */
/* 8012DDE8  C0 44 00 6C */	lfs f2, 0x6c(r4)
/* 8012DDEC  48 00 00 10 */	b lbl_8012DDFC
lbl_8012DDF0:
/* 8012DDF0  3C 80 80 39 */	lis r4, m__23daAlinkHIO_wlMoveNoP_c0@ha /* 0x8038EF28@ha */
/* 8012DDF4  38 84 EF 28 */	addi r4, r4, m__23daAlinkHIO_wlMoveNoP_c0@l /* 0x8038EF28@l */
/* 8012DDF8  C0 44 00 10 */	lfs f2, 0x10(r4)
lbl_8012DDFC:
/* 8012DDFC  48 14 29 45 */	bl cLib_chaseF__FPfff
/* 8012DE00  7F C3 F3 78 */	mr r3, r30
/* 8012DE04  4B FF BC 7D */	bl checkWolfGroundSpecialMode__9daAlink_cFv
/* 8012DE08  2C 03 00 00 */	cmpwi r3, 0
/* 8012DE0C  41 82 00 0C */	beq lbl_8012DE18
/* 8012DE10  38 60 00 01 */	li r3, 1
/* 8012DE14  48 00 00 9C */	b lbl_8012DEB0
lbl_8012DE18:
/* 8012DE18  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8012DE1C  A8 9E 30 0E */	lha r4, 0x300e(r30)
/* 8012DE20  38 A0 00 1E */	li r5, 0x1e
/* 8012DE24  38 C0 3C DF */	li r6, 0x3cdf
/* 8012DE28  38 E0 1F 40 */	li r7, 0x1f40
/* 8012DE2C  48 14 27 15 */	bl cLib_addCalcAngleS__FPsssss
/* 8012DE30  7C 7F 1B 78 */	mr r31, r3
/* 8012DE34  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8012DE38  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8012DE3C  7F C3 F3 78 */	mr r3, r30
/* 8012DE40  4B F8 BE ED */	bl checkNextActionFromButton__9daAlink_cFv
/* 8012DE44  2C 03 00 00 */	cmpwi r3, 0
/* 8012DE48  41 82 00 0C */	beq lbl_8012DE54
/* 8012DE4C  38 60 00 01 */	li r3, 1
/* 8012DE50  48 00 00 60 */	b lbl_8012DEB0
lbl_8012DE54:
/* 8012DE54  7F E0 07 35 */	extsh. r0, r31
/* 8012DE58  40 82 00 54 */	bne lbl_8012DEAC
/* 8012DE5C  7F C3 F3 78 */	mr r3, r30
/* 8012DE60  4B FE 7D C1 */	bl checkEventRun__9daAlink_cCFv
/* 8012DE64  2C 03 00 00 */	cmpwi r3, 0
/* 8012DE68  41 82 00 38 */	beq lbl_8012DEA0
/* 8012DE6C  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 8012DE70  28 00 00 05 */	cmplwi r0, 5
/* 8012DE74  40 82 00 1C */	bne lbl_8012DE90
/* 8012DE78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8012DE7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8012DE80  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8012DE84  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 8012DE88  4B F1 A2 F5 */	bl cutEnd__16dEvent_manager_cFi
/* 8012DE8C  48 00 00 20 */	b lbl_8012DEAC
lbl_8012DE90:
/* 8012DE90  7F C3 F3 78 */	mr r3, r30
/* 8012DE94  38 80 00 00 */	li r4, 0
/* 8012DE98  4B FF BC AD */	bl checkNextActionWolf__9daAlink_cFi
/* 8012DE9C  48 00 00 10 */	b lbl_8012DEAC
lbl_8012DEA0:
/* 8012DEA0  7F C3 F3 78 */	mr r3, r30
/* 8012DEA4  38 80 00 00 */	li r4, 0
/* 8012DEA8  4B FF BC 9D */	bl checkNextActionWolf__9daAlink_cFi
lbl_8012DEAC:
/* 8012DEAC  38 60 00 01 */	li r3, 1
lbl_8012DEB0:
/* 8012DEB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012DEB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012DEB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012DEBC  7C 08 03 A6 */	mtlr r0
/* 8012DEC0  38 21 00 10 */	addi r1, r1, 0x10
/* 8012DEC4  4E 80 00 20 */	blr 
