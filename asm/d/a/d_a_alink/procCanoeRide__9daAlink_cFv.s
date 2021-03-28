lbl_800F4B90:
/* 800F4B90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800F4B94  7C 08 02 A6 */	mflr r0
/* 800F4B98  90 01 00 24 */	stw r0, 0x24(r1)
/* 800F4B9C  39 61 00 20 */	addi r11, r1, 0x20
/* 800F4BA0  48 26 D6 3D */	bl _savegpr_29
/* 800F4BA4  7C 7D 1B 78 */	mr r29, r3
/* 800F4BA8  83 E3 28 18 */	lwz r31, 0x2818(r3)
/* 800F4BAC  28 1F 00 00 */	cmplwi r31, 0
/* 800F4BB0  40 82 00 10 */	bne lbl_800F4BC0
/* 800F4BB4  38 80 00 00 */	li r4, 0
/* 800F4BB8  4B FC 55 19 */	bl checkNextAction__9daAlink_cFi
/* 800F4BBC  48 00 00 A4 */	b lbl_800F4C60
lbl_800F4BC0:
/* 800F4BC0  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 800F4BC4  38 63 00 24 */	addi r3, r3, 0x24
/* 800F4BC8  38 9D 37 C8 */	addi r4, r29, 0x37c8
/* 800F4BCC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 800F4BD0  48 25 21 9D */	bl PSMTXMultVec
/* 800F4BD4  3B DD 1F D0 */	addi r30, r29, 0x1fd0
/* 800F4BD8  7F C3 F3 78 */	mr r3, r30
/* 800F4BDC  48 06 98 F1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F4BE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F4BE4  41 82 00 14 */	beq lbl_800F4BF8
/* 800F4BE8  7F A3 EB 78 */	mr r3, r29
/* 800F4BEC  38 80 00 01 */	li r4, 1
/* 800F4BF0  48 00 05 F5 */	bl procCanoeWaitInit__9daAlink_cFi
/* 800F4BF4  48 00 00 68 */	b lbl_800F4C5C
lbl_800F4BF8:
/* 800F4BF8  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 800F4BFC  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 800F4C00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F4C04  40 80 00 58 */	bge lbl_800F4C5C
/* 800F4C08  A8 7D 30 0E */	lha r3, 0x300e(r29)
/* 800F4C0C  38 03 01 80 */	addi r0, r3, 0x180
/* 800F4C10  B0 1D 30 0E */	sth r0, 0x300e(r29)
/* 800F4C14  A8 1D 30 08 */	lha r0, 0x3008(r29)
/* 800F4C18  2C 00 00 00 */	cmpwi r0, 0
/* 800F4C1C  40 82 00 20 */	bne lbl_800F4C3C
/* 800F4C20  A8 7F 04 E8 */	lha r3, 0x4e8(r31)
/* 800F4C24  A8 1D 30 0E */	lha r0, 0x300e(r29)
/* 800F4C28  7C 00 00 D0 */	neg r0, r0
/* 800F4C2C  7C 00 07 34 */	extsh r0, r0
/* 800F4C30  7C 03 02 14 */	add r0, r3, r0
/* 800F4C34  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 800F4C38  48 00 00 14 */	b lbl_800F4C4C
lbl_800F4C3C:
/* 800F4C3C  A8 7F 04 E8 */	lha r3, 0x4e8(r31)
/* 800F4C40  A8 1D 30 0E */	lha r0, 0x300e(r29)
/* 800F4C44  7C 03 02 14 */	add r0, r3, r0
/* 800F4C48  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
lbl_800F4C4C:
/* 800F4C4C  C0 3F 14 6C */	lfs f1, 0x146c(r31)
/* 800F4C50  C0 02 95 24 */	lfs f0, lit_21021(r2)
/* 800F4C54  EC 01 00 2A */	fadds f0, f1, f0
/* 800F4C58  D0 1F 14 6C */	stfs f0, 0x146c(r31)
lbl_800F4C5C:
/* 800F4C5C  38 60 00 01 */	li r3, 1
lbl_800F4C60:
/* 800F4C60  39 61 00 20 */	addi r11, r1, 0x20
/* 800F4C64  48 26 D5 C5 */	bl _restgpr_29
/* 800F4C68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800F4C6C  7C 08 03 A6 */	mtlr r0
/* 800F4C70  38 21 00 20 */	addi r1, r1, 0x20
/* 800F4C74  4E 80 00 20 */	blr 
