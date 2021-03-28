lbl_80A61730:
/* 80A61730  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A61734  7C 08 02 A6 */	mflr r0
/* 80A61738  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A6173C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80A61740  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80A61744  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80A61748  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80A6174C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A61750  7C 7F 1B 78 */	mr r31, r3
/* 80A61754  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80A61758  28 00 00 00 */	cmplwi r0, 0
/* 80A6175C  40 82 01 00 */	bne lbl_80A6185C
/* 80A61760  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80A61764  38 63 FD FF */	addi r3, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80A61768  38 80 00 1F */	li r4, 0x1f
/* 80A6176C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A61770  28 00 00 00 */	cmplwi r0, 0
/* 80A61774  41 82 00 10 */	beq lbl_80A61784
/* 80A61778  38 60 00 00 */	li r3, 0
/* 80A6177C  38 80 00 00 */	li r4, 0
/* 80A61780  48 00 00 18 */	b lbl_80A61798
lbl_80A61784:
/* 80A61784  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A61788  2C 00 00 00 */	cmpwi r0, 0
/* 80A6178C  41 82 00 0C */	beq lbl_80A61798
/* 80A61790  38 60 00 00 */	li r3, 0
/* 80A61794  38 80 00 00 */	li r4, 0
lbl_80A61798:
/* 80A61798  38 00 00 79 */	li r0, 0x79
/* 80A6179C  90 1F 0E 78 */	stw r0, 0xe78(r31)
/* 80A617A0  90 7F 0E 74 */	stw r3, 0xe74(r31)
/* 80A617A4  90 9F 0E 64 */	stw r4, 0xe64(r31)
/* 80A617A8  80 1F 0E E8 */	lwz r0, 0xee8(r31)
/* 80A617AC  60 00 00 04 */	ori r0, r0, 4
/* 80A617B0  90 1F 0E E8 */	stw r0, 0xee8(r31)
/* 80A617B4  3C 60 80 A6 */	lis r3, lit_4205@ha
/* 80A617B8  C0 03 39 4C */	lfs f0, lit_4205@l(r3)
/* 80A617BC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A617C0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A617C4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A617C8  C3 FF 0D EC */	lfs f31, 0xdec(r31)
/* 80A617CC  C3 DF 0D F0 */	lfs f30, 0xdf0(r31)
/* 80A617D0  88 1F 0F 88 */	lbz r0, 0xf88(r31)
/* 80A617D4  28 00 00 01 */	cmplwi r0, 1
/* 80A617D8  40 82 00 18 */	bne lbl_80A617F0
/* 80A617DC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A617E0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A617E4  3C 60 80 A6 */	lis r3, lit_4843@ha
/* 80A617E8  C0 03 39 A4 */	lfs f0, lit_4843@l(r3)
/* 80A617EC  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_80A617F0:
/* 80A617F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A617F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A617F8  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80A617FC  4B 5A AB E0 */	b mDoMtx_YrotS__FPA4_fs
/* 80A61800  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A61804  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A61808  38 81 00 08 */	addi r4, r1, 8
/* 80A6180C  7C 85 23 78 */	mr r5, r4
/* 80A61810  4B 8E 55 5C */	b PSMTXMultVec
/* 80A61814  38 61 00 08 */	addi r3, r1, 8
/* 80A61818  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A6181C  7C 65 1B 78 */	mr r5, r3
/* 80A61820  4B 8E 58 70 */	b PSVECAdd
/* 80A61824  38 7F 0F 70 */	addi r3, r31, 0xf70
/* 80A61828  FC 20 F8 90 */	fmr f1, f31
/* 80A6182C  4B 80 D9 CC */	b SetH__8cM3dGCylFf
/* 80A61830  38 7F 0F 70 */	addi r3, r31, 0xf70
/* 80A61834  FC 20 F0 90 */	fmr f1, f30
/* 80A61838  4B 80 D9 C8 */	b SetR__8cM3dGCylFf
/* 80A6183C  38 7F 0F 70 */	addi r3, r31, 0xf70
/* 80A61840  38 81 00 08 */	addi r4, r1, 8
/* 80A61844  4B 80 D9 98 */	b SetC__8cM3dGCylFRC4cXyz
/* 80A61848  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A6184C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A61850  38 63 23 3C */	addi r3, r3, 0x233c
/* 80A61854  38 9F 0E 4C */	addi r4, r31, 0xe4c
/* 80A61858  4B 80 33 50 */	b Set__4cCcSFP8cCcD_Obj
lbl_80A6185C:
/* 80A6185C  38 7F 0E 4C */	addi r3, r31, 0xe4c
/* 80A61860  81 9F 0E 88 */	lwz r12, 0xe88(r31)
/* 80A61864  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80A61868  7D 89 03 A6 */	mtctr r12
/* 80A6186C  4E 80 04 21 */	bctrl 
/* 80A61870  38 7F 0E 4C */	addi r3, r31, 0xe4c
/* 80A61874  81 9F 0E 88 */	lwz r12, 0xe88(r31)
/* 80A61878  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A6187C  7D 89 03 A6 */	mtctr r12
/* 80A61880  4E 80 04 21 */	bctrl 
/* 80A61884  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80A61888  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80A6188C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80A61890  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80A61894  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A61898  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A6189C  7C 08 03 A6 */	mtlr r0
/* 80A618A0  38 21 00 40 */	addi r1, r1, 0x40
/* 80A618A4  4E 80 00 20 */	blr 
