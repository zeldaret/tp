lbl_805880C8:
/* 805880C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805880CC  7C 08 02 A6 */	mflr r0
/* 805880D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805880D4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805880D8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805880DC  7C 7F 1B 78 */	mr r31, r3
/* 805880E0  3C 60 80 59 */	lis r3, l_gateBmdIdx@ha /* 0x8058AB30@ha */
/* 805880E4  3B C3 AB 30 */	addi r30, r3, l_gateBmdIdx@l /* 0x8058AB30@l */
/* 805880E8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805880EC  4B A8 4C 79 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 805880F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805880F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805880F8  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 805880FC  4B A8 43 39 */	bl mDoMtx_YrotM__FPA4_fs
/* 80588100  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80588104  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80588108  38 9F 0B 18 */	addi r4, r31, 0xb18
/* 8058810C  4B DB E3 A5 */	bl PSMTXCopy
/* 80588110  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80588114  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80588118  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8058811C  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80588120  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80588124  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80588128  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8058812C  88 1F 0B EC */	lbz r0, 0xbec(r31)
/* 80588130  28 00 00 00 */	cmplwi r0, 0
/* 80588134  41 82 00 0C */	beq lbl_80588140
/* 80588138  28 00 00 01 */	cmplwi r0, 1
/* 8058813C  40 82 00 24 */	bne lbl_80588160
lbl_80588140:
/* 80588140  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80588144  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80588148  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8058814C  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80588150  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80588154  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80588158  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8058815C  48 00 00 30 */	b lbl_8058818C
lbl_80588160:
/* 80588160  28 00 00 02 */	cmplwi r0, 2
/* 80588164  40 82 00 28 */	bne lbl_8058818C
/* 80588168  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 8058816C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80588170  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80588174  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80588178  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8058817C  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80588180  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 80588184  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80588188  D0 03 00 20 */	stfs f0, 0x20(r3)
lbl_8058818C:
/* 8058818C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80588190  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80588194  28 00 00 FF */	cmplwi r0, 0xff
/* 80588198  41 82 00 4C */	beq lbl_805881E4
/* 8058819C  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 805881A0  28 03 00 00 */	cmplwi r3, 0
/* 805881A4  41 82 00 1C */	beq lbl_805881C0
/* 805881A8  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 805881AC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 805881B0  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 805881B4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 805881B8  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 805881BC  D0 03 00 20 */	stfs f0, 0x20(r3)
lbl_805881C0:
/* 805881C0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805881C4  28 03 00 00 */	cmplwi r3, 0
/* 805881C8  41 82 00 1C */	beq lbl_805881E4
/* 805881CC  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 805881D0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 805881D4  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 805881D8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 805881DC  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 805881E0  D0 03 00 20 */	stfs f0, 0x20(r3)
lbl_805881E4:
/* 805881E4  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 805881E8  D0 01 00 08 */	stfs f0, 8(r1)
/* 805881EC  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 805881F0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805881F4  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 805881F8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805881FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80588200  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80588204  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80588208  4B A8 41 D5 */	bl mDoMtx_YrotS__FPA4_fs
/* 8058820C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80588210  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80588214  38 81 00 08 */	addi r4, r1, 8
/* 80588218  7C 85 23 78 */	mr r5, r4
/* 8058821C  4B DB EB 51 */	bl PSMTXMultVec
/* 80588220  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80588224  D0 1F 0B D4 */	stfs f0, 0xbd4(r31)
/* 80588228  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8058822C  D0 1F 0B D8 */	stfs f0, 0xbd8(r31)
/* 80588230  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80588234  D0 1F 0B DC */	stfs f0, 0xbdc(r31)
/* 80588238  38 7F 0B D4 */	addi r3, r31, 0xbd4
/* 8058823C  38 81 00 08 */	addi r4, r1, 8
/* 80588240  7C 65 1B 78 */	mr r5, r3
/* 80588244  4B DB EE 4D */	bl PSVECAdd
/* 80588248  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 8058824C  38 00 00 00 */	li r0, 0
/* 80588250  B0 1F 0B E0 */	sth r0, 0xbe0(r31)
/* 80588254  B0 7F 0B E2 */	sth r3, 0xbe2(r31)
/* 80588258  B0 1F 0B E4 */	sth r0, 0xbe4(r31)
/* 8058825C  7F E3 FB 78 */	mr r3, r31
/* 80588260  48 00 00 1D */	bl setBaseMtx__12daObjKGate_cFv
/* 80588264  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80588268  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8058826C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80588270  7C 08 03 A6 */	mtlr r0
/* 80588274  38 21 00 30 */	addi r1, r1, 0x30
/* 80588278  4E 80 00 20 */	blr 
