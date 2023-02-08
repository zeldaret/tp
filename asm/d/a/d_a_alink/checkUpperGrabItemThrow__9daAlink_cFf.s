lbl_800E57AC:
/* 800E57AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E57B0  7C 08 02 A6 */	mflr r0
/* 800E57B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E57B8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 800E57BC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 800E57C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E57C4  7C 7F 1B 78 */	mr r31, r3
/* 800E57C8  FF E0 08 90 */	fmr f31, f1
/* 800E57CC  38 7F 20 48 */	addi r3, r31, 0x2048
/* 800E57D0  48 07 8C FD */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E57D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E57D8  41 82 00 1C */	beq lbl_800E57F4
/* 800E57DC  7F E3 FB 78 */	mr r3, r31
/* 800E57E0  38 80 00 02 */	li r4, 2
/* 800E57E4  FC 20 F8 90 */	fmr f1, f31
/* 800E57E8  4B FC 7F 3D */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800E57EC  38 60 00 01 */	li r3, 1
/* 800E57F0  48 00 00 24 */	b lbl_800E5814
lbl_800E57F4:
/* 800E57F4  38 7F 20 48 */	addi r3, r31, 0x2048
/* 800E57F8  C0 3F 34 3C */	lfs f1, 0x343c(r31)
/* 800E57FC  48 24 2C 31 */	bl checkPass__12J3DFrameCtrlFf
/* 800E5800  2C 03 00 00 */	cmpwi r3, 0
/* 800E5804  41 82 00 0C */	beq lbl_800E5810
/* 800E5808  7F E3 FB 78 */	mr r3, r31
/* 800E580C  4B FF FB ED */	bl setGrabItemThrow__9daAlink_cFv
lbl_800E5810:
/* 800E5810  38 60 00 00 */	li r3, 0
lbl_800E5814:
/* 800E5814  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 800E5818  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 800E581C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E5820  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E5824  7C 08 03 A6 */	mtlr r0
/* 800E5828  38 21 00 20 */	addi r1, r1, 0x20
/* 800E582C  4E 80 00 20 */	blr 
