lbl_80AE4360:
/* 80AE4360  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AE4364  7C 08 02 A6 */	mflr r0
/* 80AE4368  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AE436C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80AE4370  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80AE4374  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80AE4378  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80AE437C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AE4380  7C 7F 1B 78 */	mr r31, r3
/* 80AE4384  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80AE4388  28 00 00 00 */	cmplwi r0, 0
/* 80AE438C  40 82 00 E0 */	bne lbl_80AE446C
/* 80AE4390  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80AE4394  38 63 FD FF */	addi r3, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80AE4398  38 80 00 1F */	li r4, 0x1f
/* 80AE439C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80AE43A0  28 00 00 00 */	cmplwi r0, 0
/* 80AE43A4  41 82 00 10 */	beq lbl_80AE43B4
/* 80AE43A8  38 60 00 00 */	li r3, 0
/* 80AE43AC  38 80 00 00 */	li r4, 0
/* 80AE43B0  48 00 00 18 */	b lbl_80AE43C8
lbl_80AE43B4:
/* 80AE43B4  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AE43B8  2C 00 00 00 */	cmpwi r0, 0
/* 80AE43BC  41 82 00 0C */	beq lbl_80AE43C8
/* 80AE43C0  38 60 00 00 */	li r3, 0
/* 80AE43C4  38 80 00 00 */	li r4, 0
lbl_80AE43C8:
/* 80AE43C8  38 00 00 79 */	li r0, 0x79
/* 80AE43CC  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80AE43D0  90 7F 0E 6C */	stw r3, 0xe6c(r31)
/* 80AE43D4  90 9F 0E 5C */	stw r4, 0xe5c(r31)
/* 80AE43D8  80 1F 0E E0 */	lwz r0, 0xee0(r31)
/* 80AE43DC  60 00 00 04 */	ori r0, r0, 4
/* 80AE43E0  90 1F 0E E0 */	stw r0, 0xee0(r31)
/* 80AE43E4  3C 60 80 AE */	lis r3, lit_4185@ha
/* 80AE43E8  C0 03 6C 74 */	lfs f0, lit_4185@l(r3)
/* 80AE43EC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AE43F0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AE43F4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AE43F8  C3 FF 0D EC */	lfs f31, 0xdec(r31)
/* 80AE43FC  C3 DF 0D F0 */	lfs f30, 0xdf0(r31)
/* 80AE4400  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AE4404  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AE4408  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80AE440C  4B 52 7F D0 */	b mDoMtx_YrotS__FPA4_fs
/* 80AE4410  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AE4414  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AE4418  38 81 00 08 */	addi r4, r1, 8
/* 80AE441C  7C 85 23 78 */	mr r5, r4
/* 80AE4420  4B 86 29 4C */	b PSMTXMultVec
/* 80AE4424  38 61 00 08 */	addi r3, r1, 8
/* 80AE4428  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80AE442C  7C 65 1B 78 */	mr r5, r3
/* 80AE4430  4B 86 2C 60 */	b PSVECAdd
/* 80AE4434  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80AE4438  FC 20 F8 90 */	fmr f1, f31
/* 80AE443C  4B 78 AD BC */	b SetH__8cM3dGCylFf
/* 80AE4440  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80AE4444  FC 20 F0 90 */	fmr f1, f30
/* 80AE4448  4B 78 AD B8 */	b SetR__8cM3dGCylFf
/* 80AE444C  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80AE4450  38 81 00 08 */	addi r4, r1, 8
/* 80AE4454  4B 78 AD 88 */	b SetC__8cM3dGCylFRC4cXyz
/* 80AE4458  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AE445C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AE4460  38 63 23 3C */	addi r3, r3, 0x233c
/* 80AE4464  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80AE4468  4B 78 07 40 */	b Set__4cCcSFP8cCcD_Obj
lbl_80AE446C:
/* 80AE446C  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80AE4470  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80AE4474  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80AE4478  7D 89 03 A6 */	mtctr r12
/* 80AE447C  4E 80 04 21 */	bctrl 
/* 80AE4480  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80AE4484  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80AE4488  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80AE448C  7D 89 03 A6 */	mtctr r12
/* 80AE4490  4E 80 04 21 */	bctrl 
/* 80AE4494  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80AE4498  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80AE449C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80AE44A0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80AE44A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AE44A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AE44AC  7C 08 03 A6 */	mtlr r0
/* 80AE44B0  38 21 00 40 */	addi r1, r1, 0x40
/* 80AE44B4  4E 80 00 20 */	blr 
