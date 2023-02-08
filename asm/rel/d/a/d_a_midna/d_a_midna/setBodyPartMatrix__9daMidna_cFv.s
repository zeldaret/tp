lbl_804BE470:
/* 804BE470  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804BE474  7C 08 02 A6 */	mflr r0
/* 804BE478  90 01 00 54 */	stw r0, 0x54(r1)
/* 804BE47C  39 61 00 50 */	addi r11, r1, 0x50
/* 804BE480  4B EA 3D 55 */	bl _savegpr_27
/* 804BE484  7C 7F 1B 78 */	mr r31, r3
/* 804BE488  3C 60 80 4C */	lis r3, lit_3777@ha /* 0x804C64C8@ha */
/* 804BE48C  3B C3 64 C8 */	addi r30, r3, lit_3777@l /* 0x804C64C8@l */
/* 804BE490  80 9F 06 78 */	lwz r4, 0x678(r31)
/* 804BE494  28 04 00 00 */	cmplwi r4, 0
/* 804BE498  41 82 00 70 */	beq lbl_804BE508
/* 804BE49C  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804BE4A0  38 63 00 24 */	addi r3, r3, 0x24
/* 804BE4A4  38 84 00 24 */	addi r4, r4, 0x24
/* 804BE4A8  4B E8 80 09 */	bl PSMTXCopy
/* 804BE4AC  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 804BE4B0  81 83 00 00 */	lwz r12, 0(r3)
/* 804BE4B4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804BE4B8  7D 89 03 A6 */	mtctr r12
/* 804BE4BC  4E 80 04 21 */	bctrl 
/* 804BE4C0  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804BE4C4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804BE4C8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804BE4CC  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 804BE4D0  80 9F 06 78 */	lwz r4, 0x678(r31)
/* 804BE4D4  80 84 00 84 */	lwz r4, 0x84(r4)
/* 804BE4D8  80 84 00 0C */	lwz r4, 0xc(r4)
/* 804BE4DC  38 84 00 30 */	addi r4, r4, 0x30
/* 804BE4E0  4B E8 7F D1 */	bl PSMTXCopy
/* 804BE4E4  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804BE4E8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804BE4EC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804BE4F0  38 63 03 90 */	addi r3, r3, 0x390
/* 804BE4F4  80 9F 06 78 */	lwz r4, 0x678(r31)
/* 804BE4F8  80 84 00 84 */	lwz r4, 0x84(r4)
/* 804BE4FC  80 84 00 0C */	lwz r4, 0xc(r4)
/* 804BE500  38 84 00 60 */	addi r4, r4, 0x60
/* 804BE504  4B E8 7F AD */	bl PSMTXCopy
lbl_804BE508:
/* 804BE508  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804BE50C  38 63 00 24 */	addi r3, r3, 0x24
/* 804BE510  80 9F 06 7C */	lwz r4, 0x67c(r31)
/* 804BE514  38 84 00 24 */	addi r4, r4, 0x24
/* 804BE518  4B E8 7F 99 */	bl PSMTXCopy
/* 804BE51C  80 7F 06 7C */	lwz r3, 0x67c(r31)
/* 804BE520  81 83 00 00 */	lwz r12, 0(r3)
/* 804BE524  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804BE528  7D 89 03 A6 */	mtctr r12
/* 804BE52C  4E 80 04 21 */	bctrl 
/* 804BE530  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804BE534  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804BE538  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804BE53C  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 804BE540  80 9F 06 7C */	lwz r4, 0x67c(r31)
/* 804BE544  80 84 00 84 */	lwz r4, 0x84(r4)
/* 804BE548  80 84 00 0C */	lwz r4, 0xc(r4)
/* 804BE54C  38 84 00 30 */	addi r4, r4, 0x30
/* 804BE550  4B E8 7F 61 */	bl PSMTXCopy
/* 804BE554  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804BE558  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804BE55C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804BE560  38 63 03 90 */	addi r3, r3, 0x390
/* 804BE564  80 9F 06 7C */	lwz r4, 0x67c(r31)
/* 804BE568  80 84 00 84 */	lwz r4, 0x84(r4)
/* 804BE56C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 804BE570  38 84 00 60 */	addi r4, r4, 0x60
/* 804BE574  4B E8 7F 3D */	bl PSMTXCopy
/* 804BE578  80 9F 06 70 */	lwz r4, 0x670(r31)
/* 804BE57C  28 04 00 00 */	cmplwi r4, 0
/* 804BE580  41 82 00 30 */	beq lbl_804BE5B0
/* 804BE584  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804BE588  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804BE58C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804BE590  38 63 00 C0 */	addi r3, r3, 0xc0
/* 804BE594  38 84 00 24 */	addi r4, r4, 0x24
/* 804BE598  4B E8 7F 19 */	bl PSMTXCopy
/* 804BE59C  80 7F 06 70 */	lwz r3, 0x670(r31)
/* 804BE5A0  81 83 00 00 */	lwz r12, 0(r3)
/* 804BE5A4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804BE5A8  7D 89 03 A6 */	mtctr r12
/* 804BE5AC  4E 80 04 21 */	bctrl 
lbl_804BE5B0:
/* 804BE5B0  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804BE5B4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804BE5B8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804BE5BC  38 63 00 C0 */	addi r3, r3, 0xc0
/* 804BE5C0  80 9F 06 74 */	lwz r4, 0x674(r31)
/* 804BE5C4  38 84 00 24 */	addi r4, r4, 0x24
/* 804BE5C8  4B E8 7E E9 */	bl PSMTXCopy
/* 804BE5CC  80 7F 06 74 */	lwz r3, 0x674(r31)
/* 804BE5D0  81 83 00 00 */	lwz r12, 0(r3)
/* 804BE5D4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804BE5D8  7D 89 03 A6 */	mtctr r12
/* 804BE5DC  4E 80 04 21 */	bctrl 
/* 804BE5E0  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804BE5E4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804BE5E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804BE5EC  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 804BE5F0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804BE5F4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804BE5F8  4B E8 7E B9 */	bl PSMTXCopy
/* 804BE5FC  C0 3E 04 08 */	lfs f1, 0x408(r30)
/* 804BE600  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 804BE604  FC 60 10 90 */	fmr f3, f2
/* 804BE608  4B B4 E7 95 */	bl transM__14mDoMtx_stack_cFfff
/* 804BE60C  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804BE610  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804BE614  41 82 00 48 */	beq lbl_804BE65C
/* 804BE618  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804BE61C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804BE620  80 9F 06 D8 */	lwz r4, 0x6d8(r31)
/* 804BE624  38 84 00 24 */	addi r4, r4, 0x24
/* 804BE628  4B E8 7E 89 */	bl PSMTXCopy
/* 804BE62C  80 7F 06 DC */	lwz r3, 0x6dc(r31)
/* 804BE630  28 03 00 00 */	cmplwi r3, 0
/* 804BE634  41 82 00 14 */	beq lbl_804BE648
/* 804BE638  80 9F 06 D8 */	lwz r4, 0x6d8(r31)
/* 804BE63C  80 84 00 04 */	lwz r4, 4(r4)
/* 804BE640  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804BE644  4B B4 F3 89 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_804BE648:
/* 804BE648  80 7F 06 D8 */	lwz r3, 0x6d8(r31)
/* 804BE64C  81 83 00 00 */	lwz r12, 0(r3)
/* 804BE650  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804BE654  7D 89 03 A6 */	mtctr r12
/* 804BE658  4E 80 04 21 */	bctrl 
lbl_804BE65C:
/* 804BE65C  3B A0 00 00 */	li r29, 0
/* 804BE660  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BE664  74 00 10 20 */	andis. r0, r0, 0x1020
/* 804BE668  40 82 00 7C */	bne lbl_804BE6E4
/* 804BE66C  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804BE670  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804BE674  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804BE678  C0 03 01 2C */	lfs f0, 0x12c(r3)
/* 804BE67C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804BE680  C0 03 01 3C */	lfs f0, 0x13c(r3)
/* 804BE684  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804BE688  C0 03 01 4C */	lfs f0, 0x14c(r3)
/* 804BE68C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804BE690  C0 03 01 EC */	lfs f0, 0x1ec(r3)
/* 804BE694  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804BE698  C0 03 01 FC */	lfs f0, 0x1fc(r3)
/* 804BE69C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804BE6A0  C0 03 02 0C */	lfs f0, 0x20c(r3)
/* 804BE6A4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804BE6A8  38 61 00 20 */	addi r3, r1, 0x20
/* 804BE6AC  38 81 00 2C */	addi r4, r1, 0x2c
/* 804BE6B0  7C 65 1B 78 */	mr r5, r3
/* 804BE6B4  4B E8 8A 01 */	bl PSVECSubtract
/* 804BE6B8  38 61 00 20 */	addi r3, r1, 0x20
/* 804BE6BC  4B DA 8A 95 */	bl atan2sY_XZ__4cXyzCFv
/* 804BE6C0  A8 1F 08 64 */	lha r0, 0x864(r31)
/* 804BE6C4  7C 03 00 50 */	subf r0, r3, r0
/* 804BE6C8  7C 06 07 34 */	extsh r6, r0
/* 804BE6CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804BE6D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804BE6D4  38 80 00 00 */	li r4, 0
/* 804BE6D8  A8 BF 08 6E */	lha r5, 0x86e(r31)
/* 804BE6DC  4B B4 DA 89 */	bl mDoMtx_XYZrotM__FPA4_fsss
/* 804BE6E0  48 00 00 94 */	b lbl_804BE774
lbl_804BE6E4:
/* 804BE6E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804BE6E8  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804BE6EC  80 7C 5D B4 */	lwz r3, 0x5db4(r28)
/* 804BE6F0  4B C7 AA ED */	bl getWolfLockActorEnd__9daAlink_cFv
/* 804BE6F4  28 03 00 00 */	cmplwi r3, 0
/* 804BE6F8  41 82 00 7C */	beq lbl_804BE774
/* 804BE6FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804BE700  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804BE704  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 804BE708  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804BE70C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 804BE710  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804BE714  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 804BE718  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804BE71C  80 7C 5D B4 */	lwz r3, 0x5db4(r28)
/* 804BE720  4B C7 AA BD */	bl getWolfLockActorEnd__9daAlink_cFv
/* 804BE724  7C 64 1B 78 */	mr r4, r3
/* 804BE728  38 61 00 08 */	addi r3, r1, 8
/* 804BE72C  38 84 05 38 */	addi r4, r4, 0x538
/* 804BE730  38 A1 00 14 */	addi r5, r1, 0x14
/* 804BE734  4B DA 84 01 */	bl __mi__4cXyzCFRC3Vec
/* 804BE738  C0 01 00 08 */	lfs f0, 8(r1)
/* 804BE73C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804BE740  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804BE744  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804BE748  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804BE74C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804BE750  38 61 00 14 */	addi r3, r1, 0x14
/* 804BE754  4B DA 89 D5 */	bl atan2sX_Z__4cXyzCFv
/* 804BE758  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804BE75C  7C 00 18 50 */	subf r0, r0, r3
/* 804BE760  7C 04 07 34 */	extsh r4, r0
/* 804BE764  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804BE768  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804BE76C  4B B4 DC 31 */	bl mDoMtx_XrotM__FPA4_fs
/* 804BE770  3B A0 00 01 */	li r29, 1
lbl_804BE774:
/* 804BE774  80 1F 08 C0 */	lwz r0, 0x8c0(r31)
/* 804BE778  28 00 00 13 */	cmplwi r0, 0x13
/* 804BE77C  41 82 00 14 */	beq lbl_804BE790
/* 804BE780  28 00 00 14 */	cmplwi r0, 0x14
/* 804BE784  41 82 00 0C */	beq lbl_804BE790
/* 804BE788  28 00 00 15 */	cmplwi r0, 0x15
/* 804BE78C  40 82 00 08 */	bne lbl_804BE794
lbl_804BE790:
/* 804BE790  3B A0 00 01 */	li r29, 1
lbl_804BE794:
/* 804BE794  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804BE798  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804BE79C  80 9F 06 84 */	lwz r4, 0x684(r31)
/* 804BE7A0  38 84 00 24 */	addi r4, r4, 0x24
/* 804BE7A4  4B E8 7D 0D */	bl PSMTXCopy
/* 804BE7A8  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 804BE7AC  81 83 00 00 */	lwz r12, 0(r3)
/* 804BE7B0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804BE7B4  7D 89 03 A6 */	mtctr r12
/* 804BE7B8  4E 80 04 21 */	bctrl 
/* 804BE7BC  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 804BE7C0  80 A3 00 04 */	lwz r5, 4(r3)
/* 804BE7C4  38 80 00 00 */	li r4, 0
/* 804BE7C8  48 00 00 24 */	b lbl_804BE7EC
lbl_804BE7CC:
/* 804BE7CC  80 65 00 60 */	lwz r3, 0x60(r5)
/* 804BE7D0  54 80 13 BA */	rlwinm r0, r4, 2, 0xe, 0x1d
/* 804BE7D4  7C 63 00 2E */	lwzx r3, r3, r0
/* 804BE7D8  80 63 00 08 */	lwz r3, 8(r3)
/* 804BE7DC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804BE7E0  60 00 00 01 */	ori r0, r0, 1
/* 804BE7E4  90 03 00 0C */	stw r0, 0xc(r3)
/* 804BE7E8  38 84 00 01 */	addi r4, r4, 1
lbl_804BE7EC:
/* 804BE7EC  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 804BE7F0  28 00 00 03 */	cmplwi r0, 3
/* 804BE7F4  41 80 FF D8 */	blt lbl_804BE7CC
/* 804BE7F8  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BE7FC  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 804BE800  40 82 00 6C */	bne lbl_804BE86C
/* 804BE804  38 9E 01 1C */	addi r4, r30, 0x11c
/* 804BE808  A0 04 02 40 */	lhz r0, 0x240(r4)
/* 804BE80C  A0 7F 06 0C */	lhz r3, 0x60c(r31)
/* 804BE810  7C 00 18 40 */	cmplw r0, r3
/* 804BE814  41 82 00 58 */	beq lbl_804BE86C
/* 804BE818  A0 04 02 4C */	lhz r0, 0x24c(r4)
/* 804BE81C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 804BE820  7C 00 18 40 */	cmplw r0, r3
/* 804BE824  41 82 00 48 */	beq lbl_804BE86C
/* 804BE828  A0 04 02 58 */	lhz r0, 0x258(r4)
/* 804BE82C  7C 00 18 40 */	cmplw r0, r3
/* 804BE830  41 82 00 3C */	beq lbl_804BE86C
/* 804BE834  A0 04 02 64 */	lhz r0, 0x264(r4)
/* 804BE838  7C 00 18 40 */	cmplw r0, r3
/* 804BE83C  41 82 00 30 */	beq lbl_804BE86C
/* 804BE840  A0 04 02 70 */	lhz r0, 0x270(r4)
/* 804BE844  7C 00 18 40 */	cmplw r0, r3
/* 804BE848  41 82 00 24 */	beq lbl_804BE86C
/* 804BE84C  80 1F 08 98 */	lwz r0, 0x898(r31)
/* 804BE850  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 804BE854  40 82 00 18 */	bne lbl_804BE86C
/* 804BE858  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804BE85C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804BE860  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 804BE864  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 804BE868  41 82 00 48 */	beq lbl_804BE8B0
lbl_804BE86C:
/* 804BE86C  2C 1D 00 00 */	cmpwi r29, 0
/* 804BE870  41 82 00 20 */	beq lbl_804BE890
/* 804BE874  80 65 00 60 */	lwz r3, 0x60(r5)
/* 804BE878  80 63 00 08 */	lwz r3, 8(r3)
/* 804BE87C  80 63 00 08 */	lwz r3, 8(r3)
/* 804BE880  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804BE884  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804BE888  90 03 00 0C */	stw r0, 0xc(r3)
/* 804BE88C  48 00 00 1C */	b lbl_804BE8A8
lbl_804BE890:
/* 804BE890  80 65 00 60 */	lwz r3, 0x60(r5)
/* 804BE894  80 63 00 04 */	lwz r3, 4(r3)
/* 804BE898  80 63 00 08 */	lwz r3, 8(r3)
/* 804BE89C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804BE8A0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804BE8A4  90 03 00 0C */	stw r0, 0xc(r3)
lbl_804BE8A8:
/* 804BE8A8  3B 80 00 01 */	li r28, 1
/* 804BE8AC  48 00 00 20 */	b lbl_804BE8CC
lbl_804BE8B0:
/* 804BE8B0  80 65 00 60 */	lwz r3, 0x60(r5)
/* 804BE8B4  80 63 00 00 */	lwz r3, 0(r3)
/* 804BE8B8  80 63 00 08 */	lwz r3, 8(r3)
/* 804BE8BC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804BE8C0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804BE8C4  90 03 00 0C */	stw r0, 0xc(r3)
/* 804BE8C8  3B 80 00 00 */	li r28, 0
lbl_804BE8CC:
/* 804BE8CC  80 9F 06 80 */	lwz r4, 0x680(r31)
/* 804BE8D0  28 04 00 00 */	cmplwi r4, 0
/* 804BE8D4  41 82 01 9C */	beq lbl_804BEA70
/* 804BE8D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804BE8DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804BE8E0  38 84 00 24 */	addi r4, r4, 0x24
/* 804BE8E4  4B E8 7B CD */	bl PSMTXCopy
/* 804BE8E8  80 7F 06 80 */	lwz r3, 0x680(r31)
/* 804BE8EC  81 83 00 00 */	lwz r12, 0(r3)
/* 804BE8F0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804BE8F4  7D 89 03 A6 */	mtctr r12
/* 804BE8F8  4E 80 04 21 */	bctrl 
/* 804BE8FC  80 7F 06 80 */	lwz r3, 0x680(r31)
/* 804BE900  80 83 00 04 */	lwz r4, 4(r3)
/* 804BE904  38 A0 00 00 */	li r5, 0
/* 804BE908  48 00 00 24 */	b lbl_804BE92C
lbl_804BE90C:
/* 804BE90C  80 64 00 60 */	lwz r3, 0x60(r4)
/* 804BE910  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 804BE914  7C 63 00 2E */	lwzx r3, r3, r0
/* 804BE918  80 63 00 08 */	lwz r3, 8(r3)
/* 804BE91C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804BE920  60 00 00 01 */	ori r0, r0, 1
/* 804BE924  90 03 00 0C */	stw r0, 0xc(r3)
/* 804BE928  38 A5 00 01 */	addi r5, r5, 1
lbl_804BE92C:
/* 804BE92C  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 804BE930  28 00 00 03 */	cmplwi r0, 3
/* 804BE934  41 80 FF D8 */	blt lbl_804BE90C
/* 804BE938  2C 1C 00 00 */	cmpwi r28, 0
/* 804BE93C  41 82 00 68 */	beq lbl_804BE9A4
/* 804BE940  2C 1D 00 00 */	cmpwi r29, 0
/* 804BE944  41 82 00 20 */	beq lbl_804BE964
/* 804BE948  80 64 00 60 */	lwz r3, 0x60(r4)
/* 804BE94C  80 63 00 08 */	lwz r3, 8(r3)
/* 804BE950  80 63 00 08 */	lwz r3, 8(r3)
/* 804BE954  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804BE958  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804BE95C  90 03 00 0C */	stw r0, 0xc(r3)
/* 804BE960  48 00 00 1C */	b lbl_804BE97C
lbl_804BE964:
/* 804BE964  80 64 00 60 */	lwz r3, 0x60(r4)
/* 804BE968  80 63 00 04 */	lwz r3, 4(r3)
/* 804BE96C  80 63 00 08 */	lwz r3, 8(r3)
/* 804BE970  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804BE974  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804BE978  90 03 00 0C */	stw r0, 0xc(r3)
lbl_804BE97C:
/* 804BE97C  3B BE 00 44 */	addi r29, r30, 0x44
/* 804BE980  4B CE DB FD */	bl dKy_darkworld_check__Fv
/* 804BE984  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804BE988  41 82 00 10 */	beq lbl_804BE998
/* 804BE98C  3B 9E 00 3C */	addi r28, r30, 0x3c
/* 804BE990  3B 7E 00 38 */	addi r27, r30, 0x38
/* 804BE994  48 00 00 4C */	b lbl_804BE9E0
lbl_804BE998:
/* 804BE998  3B 9E 00 50 */	addi r28, r30, 0x50
/* 804BE99C  3B 7E 00 58 */	addi r27, r30, 0x58
/* 804BE9A0  48 00 00 40 */	b lbl_804BE9E0
lbl_804BE9A4:
/* 804BE9A4  80 64 00 60 */	lwz r3, 0x60(r4)
/* 804BE9A8  80 63 00 00 */	lwz r3, 0(r3)
/* 804BE9AC  80 63 00 08 */	lwz r3, 8(r3)
/* 804BE9B0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804BE9B4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804BE9B8  90 03 00 0C */	stw r0, 0xc(r3)
/* 804BE9BC  3B 9E 00 2C */	addi r28, r30, 0x2c
/* 804BE9C0  4B CE DB BD */	bl dKy_darkworld_check__Fv
/* 804BE9C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804BE9C8  41 82 00 10 */	beq lbl_804BE9D8
/* 804BE9CC  3B BE 00 34 */	addi r29, r30, 0x34
/* 804BE9D0  3B 7E 00 38 */	addi r27, r30, 0x38
/* 804BE9D4  48 00 00 0C */	b lbl_804BE9E0
lbl_804BE9D8:
/* 804BE9D8  3B BE 00 48 */	addi r29, r30, 0x48
/* 804BE9DC  3B 7E 00 4C */	addi r27, r30, 0x4c
lbl_804BE9E0:
/* 804BE9E0  38 7F 06 E0 */	addi r3, r31, 0x6e0
/* 804BE9E4  A8 9C 00 00 */	lha r4, 0(r28)
/* 804BE9E8  38 A0 00 0A */	li r5, 0xa
/* 804BE9EC  4B DB 1C E5 */	bl cLib_chaseS__FPsss
/* 804BE9F0  38 7F 06 E2 */	addi r3, r31, 0x6e2
/* 804BE9F4  A8 9C 00 02 */	lha r4, 2(r28)
/* 804BE9F8  38 A0 00 0A */	li r5, 0xa
/* 804BE9FC  4B DB 1C D5 */	bl cLib_chaseS__FPsss
/* 804BEA00  38 7F 06 E4 */	addi r3, r31, 0x6e4
/* 804BEA04  A8 9C 00 04 */	lha r4, 4(r28)
/* 804BEA08  38 A0 00 0A */	li r5, 0xa
/* 804BEA0C  4B DB 1C C5 */	bl cLib_chaseS__FPsss
/* 804BEA10  38 7F 06 E8 */	addi r3, r31, 0x6e8
/* 804BEA14  88 9D 00 00 */	lbz r4, 0(r29)
/* 804BEA18  38 A0 00 0A */	li r5, 0xa
/* 804BEA1C  4B DB 1C 41 */	bl cLib_chaseUC__FPUcUcUc
/* 804BEA20  38 7F 06 E9 */	addi r3, r31, 0x6e9
/* 804BEA24  88 9D 00 01 */	lbz r4, 1(r29)
/* 804BEA28  38 A0 00 0A */	li r5, 0xa
/* 804BEA2C  4B DB 1C 31 */	bl cLib_chaseUC__FPUcUcUc
/* 804BEA30  38 7F 06 EA */	addi r3, r31, 0x6ea
/* 804BEA34  88 9D 00 02 */	lbz r4, 2(r29)
/* 804BEA38  38 A0 00 0A */	li r5, 0xa
/* 804BEA3C  4B DB 1C 21 */	bl cLib_chaseUC__FPUcUcUc
/* 804BEA40  38 7F 06 EC */	addi r3, r31, 0x6ec
/* 804BEA44  88 9B 00 00 */	lbz r4, 0(r27)
/* 804BEA48  38 A0 00 0A */	li r5, 0xa
/* 804BEA4C  4B DB 1C 11 */	bl cLib_chaseUC__FPUcUcUc
/* 804BEA50  38 7F 06 ED */	addi r3, r31, 0x6ed
/* 804BEA54  88 9B 00 01 */	lbz r4, 1(r27)
/* 804BEA58  38 A0 00 0A */	li r5, 0xa
/* 804BEA5C  4B DB 1C 01 */	bl cLib_chaseUC__FPUcUcUc
/* 804BEA60  38 7F 06 EE */	addi r3, r31, 0x6ee
/* 804BEA64  88 9B 00 02 */	lbz r4, 2(r27)
/* 804BEA68  38 A0 00 0A */	li r5, 0xa
/* 804BEA6C  4B DB 1B F1 */	bl cLib_chaseUC__FPUcUcUc
lbl_804BEA70:
/* 804BEA70  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 804BEA74  28 04 00 00 */	cmplwi r4, 0
/* 804BEA78  41 82 00 58 */	beq lbl_804BEAD0
/* 804BEA7C  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804BEA80  38 63 00 24 */	addi r3, r3, 0x24
/* 804BEA84  38 84 00 24 */	addi r4, r4, 0x24
/* 804BEA88  4B E8 7A 29 */	bl PSMTXCopy
/* 804BEA8C  3B 60 00 00 */	li r27, 0
/* 804BEA90  3B A0 00 00 */	li r29, 0
lbl_804BEA94:
/* 804BEA94  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804BEA98  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804BEA9C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804BEAA0  7C 60 EA 14 */	add r3, r0, r29
/* 804BEAA4  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 804BEAA8  80 84 00 84 */	lwz r4, 0x84(r4)
/* 804BEAAC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 804BEAB0  7C 80 EA 14 */	add r4, r0, r29
/* 804BEAB4  4B E8 79 FD */	bl PSMTXCopy
/* 804BEAB8  3B 7B 00 01 */	addi r27, r27, 1
/* 804BEABC  2C 1B 00 1D */	cmpwi r27, 0x1d
/* 804BEAC0  3B BD 00 30 */	addi r29, r29, 0x30
/* 804BEAC4  41 80 FF D0 */	blt lbl_804BEA94
/* 804BEAC8  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 804BEACC  4B E6 91 8D */	bl calcWeightEnvelopeMtx__8J3DModelFv
lbl_804BEAD0:
/* 804BEAD0  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804BEAD4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804BEAD8  80 83 00 0C */	lwz r4, 0xc(r3)
/* 804BEADC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804BEAE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804BEAE4  C0 24 00 3C */	lfs f1, 0x3c(r4)
/* 804BEAE8  C0 5E 04 0C */	lfs f2, 0x40c(r30)
/* 804BEAEC  C0 04 00 4C */	lfs f0, 0x4c(r4)
/* 804BEAF0  EC 42 00 2A */	fadds f2, f2, f0
/* 804BEAF4  C0 64 00 5C */	lfs f3, 0x5c(r4)
/* 804BEAF8  4B E8 7D F1 */	bl PSMTXTrans
/* 804BEAFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804BEB00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804BEB04  80 9F 06 98 */	lwz r4, 0x698(r31)
/* 804BEB08  38 84 00 24 */	addi r4, r4, 0x24
/* 804BEB0C  4B E8 79 A5 */	bl PSMTXCopy
/* 804BEB10  80 7F 06 98 */	lwz r3, 0x698(r31)
/* 804BEB14  81 83 00 00 */	lwz r12, 0(r3)
/* 804BEB18  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804BEB1C  7D 89 03 A6 */	mtctr r12
/* 804BEB20  4E 80 04 21 */	bctrl 
/* 804BEB24  A0 1F 08 78 */	lhz r0, 0x878(r31)
/* 804BEB28  28 00 00 FD */	cmplwi r0, 0xfd
/* 804BEB2C  40 82 00 7C */	bne lbl_804BEBA8
/* 804BEB30  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804BEB34  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804BEB38  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804BEB3C  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 804BEB40  80 9F 06 C8 */	lwz r4, 0x6c8(r31)
/* 804BEB44  38 84 00 24 */	addi r4, r4, 0x24
/* 804BEB48  4B E8 79 69 */	bl PSMTXCopy
/* 804BEB4C  80 7F 06 CC */	lwz r3, 0x6cc(r31)
/* 804BEB50  28 03 00 00 */	cmplwi r3, 0
/* 804BEB54  41 82 00 14 */	beq lbl_804BEB68
/* 804BEB58  80 9F 06 C8 */	lwz r4, 0x6c8(r31)
/* 804BEB5C  80 84 00 04 */	lwz r4, 4(r4)
/* 804BEB60  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804BEB64  4B B4 EE 69 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_804BEB68:
/* 804BEB68  80 7F 06 C8 */	lwz r3, 0x6c8(r31)
/* 804BEB6C  81 83 00 00 */	lwz r12, 0(r3)
/* 804BEB70  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804BEB74  7D 89 03 A6 */	mtctr r12
/* 804BEB78  4E 80 04 21 */	bctrl 
/* 804BEB7C  80 7F 06 A4 */	lwz r3, 0x6a4(r31)
/* 804BEB80  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804BEB84  60 00 00 01 */	ori r0, r0, 1
/* 804BEB88  90 03 00 0C */	stw r0, 0xc(r3)
/* 804BEB8C  80 7F 06 9C */	lwz r3, 0x69c(r31)
/* 804BEB90  28 03 00 00 */	cmplwi r3, 0
/* 804BEB94  41 82 00 3C */	beq lbl_804BEBD0
/* 804BEB98  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804BEB9C  60 00 00 01 */	ori r0, r0, 1
/* 804BEBA0  90 03 00 0C */	stw r0, 0xc(r3)
/* 804BEBA4  48 00 00 2C */	b lbl_804BEBD0
lbl_804BEBA8:
/* 804BEBA8  80 7F 06 A4 */	lwz r3, 0x6a4(r31)
/* 804BEBAC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804BEBB0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804BEBB4  90 03 00 0C */	stw r0, 0xc(r3)
/* 804BEBB8  80 7F 06 9C */	lwz r3, 0x69c(r31)
/* 804BEBBC  28 03 00 00 */	cmplwi r3, 0
/* 804BEBC0  41 82 00 10 */	beq lbl_804BEBD0
/* 804BEBC4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804BEBC8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804BEBCC  90 03 00 0C */	stw r0, 0xc(r3)
lbl_804BEBD0:
/* 804BEBD0  A0 1F 08 7A */	lhz r0, 0x87a(r31)
/* 804BEBD4  28 00 00 FD */	cmplwi r0, 0xfd
/* 804BEBD8  40 82 00 7C */	bne lbl_804BEC54
/* 804BEBDC  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804BEBE0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804BEBE4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804BEBE8  38 63 03 90 */	addi r3, r3, 0x390
/* 804BEBEC  80 9F 06 D0 */	lwz r4, 0x6d0(r31)
/* 804BEBF0  38 84 00 24 */	addi r4, r4, 0x24
/* 804BEBF4  4B E8 78 BD */	bl PSMTXCopy
/* 804BEBF8  80 7F 06 D4 */	lwz r3, 0x6d4(r31)
/* 804BEBFC  28 03 00 00 */	cmplwi r3, 0
/* 804BEC00  41 82 00 14 */	beq lbl_804BEC14
/* 804BEC04  80 9F 06 D0 */	lwz r4, 0x6d0(r31)
/* 804BEC08  80 84 00 04 */	lwz r4, 4(r4)
/* 804BEC0C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804BEC10  4B B4 ED BD */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_804BEC14:
/* 804BEC14  80 7F 06 D0 */	lwz r3, 0x6d0(r31)
/* 804BEC18  81 83 00 00 */	lwz r12, 0(r3)
/* 804BEC1C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804BEC20  7D 89 03 A6 */	mtctr r12
/* 804BEC24  4E 80 04 21 */	bctrl 
/* 804BEC28  80 7F 06 A8 */	lwz r3, 0x6a8(r31)
/* 804BEC2C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804BEC30  60 00 00 01 */	ori r0, r0, 1
/* 804BEC34  90 03 00 0C */	stw r0, 0xc(r3)
/* 804BEC38  80 7F 06 A0 */	lwz r3, 0x6a0(r31)
/* 804BEC3C  28 03 00 00 */	cmplwi r3, 0
/* 804BEC40  41 82 00 3C */	beq lbl_804BEC7C
/* 804BEC44  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804BEC48  60 00 00 01 */	ori r0, r0, 1
/* 804BEC4C  90 03 00 0C */	stw r0, 0xc(r3)
/* 804BEC50  48 00 00 2C */	b lbl_804BEC7C
lbl_804BEC54:
/* 804BEC54  80 7F 06 A8 */	lwz r3, 0x6a8(r31)
/* 804BEC58  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804BEC5C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804BEC60  90 03 00 0C */	stw r0, 0xc(r3)
/* 804BEC64  80 7F 06 A0 */	lwz r3, 0x6a0(r31)
/* 804BEC68  28 03 00 00 */	cmplwi r3, 0
/* 804BEC6C  41 82 00 10 */	beq lbl_804BEC7C
/* 804BEC70  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804BEC74  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804BEC78  90 03 00 0C */	stw r0, 0xc(r3)
lbl_804BEC7C:
/* 804BEC7C  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BEC80  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804BEC84  41 82 00 80 */	beq lbl_804BED04
/* 804BEC88  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804BEC8C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804BEC90  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804BEC94  38 63 00 C0 */	addi r3, r3, 0xc0
/* 804BEC98  80 9F 06 AC */	lwz r4, 0x6ac(r31)
/* 804BEC9C  38 84 00 24 */	addi r4, r4, 0x24
/* 804BECA0  4B E8 78 11 */	bl PSMTXCopy
/* 804BECA4  80 7F 06 AC */	lwz r3, 0x6ac(r31)
/* 804BECA8  81 83 00 00 */	lwz r12, 0(r3)
/* 804BECAC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804BECB0  7D 89 03 A6 */	mtctr r12
/* 804BECB4  4E 80 04 21 */	bctrl 
/* 804BECB8  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804BECBC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804BECC0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804BECC4  38 63 00 C0 */	addi r3, r3, 0xc0
/* 804BECC8  80 9F 06 B0 */	lwz r4, 0x6b0(r31)
/* 804BECCC  38 84 00 24 */	addi r4, r4, 0x24
/* 804BECD0  4B E8 77 E1 */	bl PSMTXCopy
/* 804BECD4  80 7F 06 B8 */	lwz r3, 0x6b8(r31)
/* 804BECD8  28 03 00 00 */	cmplwi r3, 0
/* 804BECDC  41 82 00 14 */	beq lbl_804BECF0
/* 804BECE0  80 9F 06 B0 */	lwz r4, 0x6b0(r31)
/* 804BECE4  80 84 00 04 */	lwz r4, 4(r4)
/* 804BECE8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804BECEC  4B B4 EC E1 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_804BECF0:
/* 804BECF0  80 7F 06 B0 */	lwz r3, 0x6b0(r31)
/* 804BECF4  81 83 00 00 */	lwz r12, 0(r3)
/* 804BECF8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804BECFC  7D 89 03 A6 */	mtctr r12
/* 804BED00  4E 80 04 21 */	bctrl 
lbl_804BED04:
/* 804BED04  39 61 00 50 */	addi r11, r1, 0x50
/* 804BED08  4B EA 35 19 */	bl _restgpr_27
/* 804BED0C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804BED10  7C 08 03 A6 */	mtlr r0
/* 804BED14  38 21 00 50 */	addi r1, r1, 0x50
/* 804BED18  4E 80 00 20 */	blr 
