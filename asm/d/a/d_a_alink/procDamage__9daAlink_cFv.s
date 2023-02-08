lbl_800D9514:
/* 800D9514  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800D9518  7C 08 02 A6 */	mflr r0
/* 800D951C  90 01 00 44 */	stw r0, 0x44(r1)
/* 800D9520  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800D9524  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800D9528  7C 7E 1B 78 */	mr r30, r3
/* 800D952C  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800D9530  C0 63 34 7C */	lfs f3, 0x347c(r3)
/* 800D9534  C0 43 1F E0 */	lfs f2, 0x1fe0(r3)
/* 800D9538  A8 03 1F D6 */	lha r0, 0x1fd6(r3)
/* 800D953C  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800D9540  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D9544  90 01 00 0C */	stw r0, 0xc(r1)
/* 800D9548  3C 00 43 30 */	lis r0, 0x4330
/* 800D954C  90 01 00 08 */	stw r0, 8(r1)
/* 800D9550  C8 01 00 08 */	lfd f0, 8(r1)
/* 800D9554  EC 00 08 28 */	fsubs f0, f0, f1
/* 800D9558  EC 02 00 28 */	fsubs f0, f2, f0
/* 800D955C  EC 23 00 32 */	fmuls f1, f3, f0
/* 800D9560  48 18 E0 85 */	bl cM_rad2s__Ff
/* 800D9564  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 800D9568  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800D956C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800D9570  7C 43 04 2E */	lfsx f2, r3, r0
/* 800D9574  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800D9578  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800D957C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D9580  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D9584  3C 60 43 30 */	lis r3, 0x4330
/* 800D9588  90 61 00 10 */	stw r3, 0x10(r1)
/* 800D958C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800D9590  EC 00 08 28 */	fsubs f0, f0, f1
/* 800D9594  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800D9598  FC 00 00 1E */	fctiwz f0, f0
/* 800D959C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800D95A0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800D95A4  B0 1E 05 9C */	sth r0, 0x59c(r30)
/* 800D95A8  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800D95AC  7C 00 00 D0 */	neg r0, r0
/* 800D95B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D95B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800D95B8  90 61 00 20 */	stw r3, 0x20(r1)
/* 800D95BC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 800D95C0  EC 00 08 28 */	fsubs f0, f0, f1
/* 800D95C4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800D95C8  FC 00 00 1E */	fctiwz f0, f0
/* 800D95CC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 800D95D0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800D95D4  B0 1E 05 A0 */	sth r0, 0x5a0(r30)
/* 800D95D8  38 00 00 00 */	li r0, 0
/* 800D95DC  B0 1E 05 9E */	sth r0, 0x59e(r30)
/* 800D95E0  38 7E 33 98 */	addi r3, r30, 0x3398
/* 800D95E4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D95E8  3C 80 80 39 */	lis r4, m__23daAlinkHIO_damNormal_c0@ha /* 0x8038E24C@ha */
/* 800D95EC  38 84 E2 4C */	addi r4, r4, m__23daAlinkHIO_damNormal_c0@l /* 0x8038E24C@l */
/* 800D95F0  C0 44 00 5C */	lfs f2, 0x5c(r4)
/* 800D95F4  48 19 71 4D */	bl cLib_chaseF__FPfff
/* 800D95F8  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800D95FC  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 800D9600  41 82 00 0C */	beq lbl_800D960C
/* 800D9604  7F C3 F3 78 */	mr r3, r30
/* 800D9608  4B FF D8 1D */	bl freezeTimerDamage__9daAlink_cFv
lbl_800D960C:
/* 800D960C  7F E3 FB 78 */	mr r3, r31
/* 800D9610  48 08 4E BD */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800D9614  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D9618  41 82 00 68 */	beq lbl_800D9680
/* 800D961C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800D9620  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800D9624  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800D9628  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 800D962C  40 82 00 14 */	bne lbl_800D9640
/* 800D9630  7F C3 F3 78 */	mr r3, r30
/* 800D9634  38 80 00 00 */	li r4, 0
/* 800D9638  4B FE 0A 99 */	bl checkNextAction__9daAlink_cFi
/* 800D963C  48 00 00 84 */	b lbl_800D96C0
lbl_800D9640:
/* 800D9640  A8 1E 30 08 */	lha r0, 0x3008(r30)
/* 800D9644  2C 00 00 00 */	cmpwi r0, 0
/* 800D9648  40 82 00 78 */	bne lbl_800D96C0
/* 800D964C  7F C3 F3 78 */	mr r3, r30
/* 800D9650  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020055@ha */
/* 800D9654  38 84 00 55 */	addi r4, r4, 0x0055 /* 0x00020055@l */
/* 800D9658  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800D965C  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800D9660  7D 89 03 A6 */	mtctr r12
/* 800D9664  4E 80 04 21 */	bctrl 
/* 800D9668  7F C3 F3 78 */	mr r3, r30
/* 800D966C  48 00 1F 45 */	bl procStEscapeInit__9daAlink_cFv
/* 800D9670  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800D9674  60 00 00 08 */	ori r0, r0, 8
/* 800D9678  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 800D967C  48 00 00 44 */	b lbl_800D96C0
lbl_800D9680:
/* 800D9680  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D9684  C0 1E 34 78 */	lfs f0, 0x3478(r30)
/* 800D9688  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D968C  40 81 00 34 */	ble lbl_800D96C0
/* 800D9690  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800D9694  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800D9698  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800D969C  60 00 00 04 */	ori r0, r0, 4
/* 800D96A0  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 800D96A4  7F C3 F3 78 */	mr r3, r30
/* 800D96A8  38 80 00 01 */	li r4, 1
/* 800D96AC  4B FE 0A 25 */	bl checkNextAction__9daAlink_cFi
/* 800D96B0  2C 03 00 00 */	cmpwi r3, 0
/* 800D96B4  40 82 00 0C */	bne lbl_800D96C0
/* 800D96B8  A8 1E 30 10 */	lha r0, 0x3010(r30)
/* 800D96BC  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_800D96C0:
/* 800D96C0  38 60 00 01 */	li r3, 1
/* 800D96C4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800D96C8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800D96CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800D96D0  7C 08 03 A6 */	mtlr r0
/* 800D96D4  38 21 00 40 */	addi r1, r1, 0x40
/* 800D96D8  4E 80 00 20 */	blr 
