lbl_800CF018:
/* 800CF018  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800CF01C  7C 08 02 A6 */	mflr r0
/* 800CF020  90 01 00 24 */	stw r0, 0x24(r1)
/* 800CF024  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800CF028  7C 7F 1B 78 */	mr r31, r3
/* 800CF02C  80 03 05 80 */	lwz r0, 0x580(r3)
/* 800CF030  64 00 04 00 */	oris r0, r0, 0x400
/* 800CF034  90 03 05 80 */	stw r0, 0x580(r3)
/* 800CF038  4B FE 59 D1 */	bl setTalkStatus__9daAlink_cFv
/* 800CF03C  7F E3 FB 78 */	mr r3, r31
/* 800CF040  38 80 00 01 */	li r4, 1
/* 800CF044  4B FE 8B B5 */	bl orderTalk__9daAlink_cFi
/* 800CF048  2C 03 00 00 */	cmpwi r3, 0
/* 800CF04C  41 82 00 0C */	beq lbl_800CF058
/* 800CF050  38 60 00 01 */	li r3, 1
/* 800CF054  48 00 00 98 */	b lbl_800CF0EC
lbl_800CF058:
/* 800CF058  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800CF05C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800CF060  41 82 00 0C */	beq lbl_800CF06C
/* 800CF064  7F E3 FB 78 */	mr r3, r31
/* 800CF068  48 03 4F CD */	bl setSwimUpDownOffset__9daAlink_cFv
lbl_800CF06C:
/* 800CF06C  7F E3 FB 78 */	mr r3, r31
/* 800CF070  38 80 00 00 */	li r4, 0
/* 800CF074  4B FF FB 65 */	bl checkSubjectEnd__9daAlink_cFi
/* 800CF078  2C 03 00 00 */	cmpwi r3, 0
/* 800CF07C  41 82 00 64 */	beq lbl_800CF0E0
/* 800CF080  38 00 00 38 */	li r0, 0x38
/* 800CF084  90 01 00 08 */	stw r0, 8(r1)
/* 800CF088  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 800CF08C  38 81 00 08 */	addi r4, r1, 8
/* 800CF090  38 A0 00 00 */	li r5, 0
/* 800CF094  38 C0 00 00 */	li r6, 0
/* 800CF098  38 E0 00 00 */	li r7, 0
/* 800CF09C  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800CF0A0  FC 40 08 90 */	fmr f2, f1
/* 800CF0A4  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 800CF0A8  FC 80 18 90 */	fmr f4, f3
/* 800CF0AC  39 00 00 00 */	li r8, 0
/* 800CF0B0  48 1D C8 D5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 800CF0B4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800CF0B8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800CF0BC  41 82 00 14 */	beq lbl_800CF0D0
/* 800CF0C0  7F E3 FB 78 */	mr r3, r31
/* 800CF0C4  38 80 00 00 */	li r4, 0
/* 800CF0C8  48 06 94 65 */	bl procWolfSwimWaitInit__9daAlink_cFi
/* 800CF0CC  48 00 00 1C */	b lbl_800CF0E8
lbl_800CF0D0:
/* 800CF0D0  7F E3 FB 78 */	mr r3, r31
/* 800CF0D4  38 80 00 00 */	li r4, 0
/* 800CF0D8  48 03 52 21 */	bl procSwimWaitInit__9daAlink_cFi
/* 800CF0DC  48 00 00 0C */	b lbl_800CF0E8
lbl_800CF0E0:
/* 800CF0E0  7F E3 FB 78 */	mr r3, r31
/* 800CF0E4  4B FF F7 BD */	bl setBodyAngleToCamera__9daAlink_cFv
lbl_800CF0E8:
/* 800CF0E8  38 60 00 01 */	li r3, 1
lbl_800CF0EC:
/* 800CF0EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800CF0F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800CF0F4  7C 08 03 A6 */	mtlr r0
/* 800CF0F8  38 21 00 20 */	addi r1, r1, 0x20
/* 800CF0FC  4E 80 00 20 */	blr 
