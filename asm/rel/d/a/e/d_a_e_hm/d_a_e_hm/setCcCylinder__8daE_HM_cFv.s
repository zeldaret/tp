lbl_806E074C:
/* 806E074C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806E0750  7C 08 02 A6 */	mflr r0
/* 806E0754  90 01 00 24 */	stw r0, 0x24(r1)
/* 806E0758  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806E075C  7C 7F 1B 78 */	mr r31, r3
/* 806E0760  A8 03 05 D2 */	lha r0, 0x5d2(r3)
/* 806E0764  2C 00 00 02 */	cmpwi r0, 2
/* 806E0768  41 82 00 74 */	beq lbl_806E07DC
/* 806E076C  40 80 00 10 */	bge lbl_806E077C
/* 806E0770  2C 00 00 01 */	cmpwi r0, 1
/* 806E0774  40 80 00 14 */	bge lbl_806E0788
/* 806E0778  48 00 00 F4 */	b lbl_806E086C
lbl_806E077C:
/* 806E077C  2C 00 00 04 */	cmpwi r0, 4
/* 806E0780  40 80 00 EC */	bge lbl_806E086C
/* 806E0784  48 00 00 88 */	b lbl_806E080C
lbl_806E0788:
/* 806E0788  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 806E078C  3C 60 80 6E */	lis r3, lit_3923@ha
/* 806E0790  C0 23 59 A0 */	lfs f1, lit_3923@l(r3)
/* 806E0794  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806E0798  EC 21 00 2A */	fadds f1, f1, f0
/* 806E079C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806E07A0  D0 01 00 08 */	stfs f0, 8(r1)
/* 806E07A4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806E07A8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806E07AC  38 7F 0A 4C */	addi r3, r31, 0xa4c
/* 806E07B0  38 81 00 08 */	addi r4, r1, 8
/* 806E07B4  4B B8 EE 94 */	b SetC__8cM3dGSphFRC4cXyz
/* 806E07B8  38 7F 0A 4C */	addi r3, r31, 0xa4c
/* 806E07BC  C0 3F 05 B0 */	lfs f1, 0x5b0(r31)
/* 806E07C0  4B B8 EF 48 */	b SetR__8cM3dGSphFf
/* 806E07C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E07C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806E07CC  38 63 23 3C */	addi r3, r3, 0x233c
/* 806E07D0  38 9F 09 28 */	addi r4, r31, 0x928
/* 806E07D4  4B B8 43 D4 */	b Set__4cCcSFP8cCcD_Obj
/* 806E07D8  48 00 00 94 */	b lbl_806E086C
lbl_806E07DC:
/* 806E07DC  38 7F 0A 4C */	addi r3, r31, 0xa4c
/* 806E07E0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806E07E4  4B B8 EE 64 */	b SetC__8cM3dGSphFRC4cXyz
/* 806E07E8  38 7F 0A 4C */	addi r3, r31, 0xa4c
/* 806E07EC  C0 3F 05 B0 */	lfs f1, 0x5b0(r31)
/* 806E07F0  4B B8 EF 18 */	b SetR__8cM3dGSphFf
/* 806E07F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E07F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806E07FC  38 63 23 3C */	addi r3, r3, 0x233c
/* 806E0800  38 9F 09 28 */	addi r4, r31, 0x928
/* 806E0804  4B B8 43 A4 */	b Set__4cCcSFP8cCcD_Obj
/* 806E0808  48 00 00 64 */	b lbl_806E086C
lbl_806E080C:
/* 806E080C  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 806E0810  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806E0814  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806E0818  D0 01 00 08 */	stfs f0, 8(r1)
/* 806E081C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806E0820  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806E0824  A8 1F 05 D4 */	lha r0, 0x5d4(r31)
/* 806E0828  2C 00 00 03 */	cmpwi r0, 3
/* 806E082C  40 82 00 14 */	bne lbl_806E0840
/* 806E0830  3C 60 80 6E */	lis r3, lit_3923@ha
/* 806E0834  C0 03 59 A0 */	lfs f0, lit_3923@l(r3)
/* 806E0838  EC 01 00 2A */	fadds f0, f1, f0
/* 806E083C  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_806E0840:
/* 806E0840  38 7F 0A 4C */	addi r3, r31, 0xa4c
/* 806E0844  38 81 00 08 */	addi r4, r1, 8
/* 806E0848  4B B8 EE 00 */	b SetC__8cM3dGSphFRC4cXyz
/* 806E084C  38 7F 0A 4C */	addi r3, r31, 0xa4c
/* 806E0850  C0 3F 05 B0 */	lfs f1, 0x5b0(r31)
/* 806E0854  4B B8 EE B4 */	b SetR__8cM3dGSphFf
/* 806E0858  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E085C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806E0860  38 63 23 3C */	addi r3, r3, 0x233c
/* 806E0864  38 9F 09 28 */	addi r4, r31, 0x928
/* 806E0868  4B B8 43 40 */	b Set__4cCcSFP8cCcD_Obj
lbl_806E086C:
/* 806E086C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806E0870  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806E0874  7C 08 03 A6 */	mtlr r0
/* 806E0878  38 21 00 20 */	addi r1, r1, 0x20
/* 806E087C  4E 80 00 20 */	blr 
