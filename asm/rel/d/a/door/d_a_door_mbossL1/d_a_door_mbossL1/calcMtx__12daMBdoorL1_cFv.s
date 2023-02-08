lbl_806735F8:
/* 806735F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806735FC  7C 08 02 A6 */	mflr r0
/* 80673600  90 01 00 34 */	stw r0, 0x34(r1)
/* 80673604  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80673608  7C 7F 1B 78 */	mr r31, r3
/* 8067360C  3C 80 80 67 */	lis r4, l_staff_name@ha /* 0x80677558@ha */
/* 80673610  38 84 75 58 */	addi r4, r4, l_staff_name@l /* 0x80677558@l */
/* 80673614  C0 04 00 68 */	lfs f0, 0x68(r4)
/* 80673618  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8067361C  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 80673620  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80673624  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80673628  C0 04 00 6C */	lfs f0, 0x6c(r4)
/* 8067362C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80673630  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80673634  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80673638  4B FF F9 4D */	bl getDoorType__12daMBdoorL1_cFv
/* 8067363C  2C 03 00 01 */	cmpwi r3, 1
/* 80673640  41 82 00 64 */	beq lbl_806736A4
/* 80673644  40 80 00 08 */	bge lbl_8067364C
/* 80673648  48 00 00 10 */	b lbl_80673658
lbl_8067364C:
/* 8067364C  2C 03 00 03 */	cmpwi r3, 3
/* 80673650  40 80 00 08 */	bge lbl_80673658
/* 80673654  48 00 00 80 */	b lbl_806736D4
lbl_80673658:
/* 80673658  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8067365C  4B 99 97 09 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80673660  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80673664  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80673668  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 8067366C  4B 99 8D C9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80673670  88 1F 05 DF */	lbz r0, 0x5df(r31)
/* 80673674  28 00 00 00 */	cmplwi r0, 0
/* 80673678  40 82 00 14 */	bne lbl_8067368C
/* 8067367C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80673680  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80673684  38 80 7F FF */	li r4, 0x7fff
/* 80673688  4B 99 8D AD */	bl mDoMtx_YrotM__FPA4_fs
lbl_8067368C:
/* 8067368C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80673690  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80673694  80 9F 05 80 */	lwz r4, 0x580(r31)
/* 80673698  38 84 00 24 */	addi r4, r4, 0x24
/* 8067369C  4B CD 2E 15 */	bl PSMTXCopy
/* 806736A0  48 00 00 DC */	b lbl_8067377C
lbl_806736A4:
/* 806736A4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806736A8  4B 99 96 BD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 806736AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806736B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806736B4  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 806736B8  4B 99 8D 7D */	bl mDoMtx_YrotM__FPA4_fs
/* 806736BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806736C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806736C4  80 9F 05 80 */	lwz r4, 0x580(r31)
/* 806736C8  38 84 00 24 */	addi r4, r4, 0x24
/* 806736CC  4B CD 2D E5 */	bl PSMTXCopy
/* 806736D0  48 00 00 AC */	b lbl_8067377C
lbl_806736D4:
/* 806736D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806736D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806736DC  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 806736E0  4B 99 8C FD */	bl mDoMtx_YrotS__FPA4_fs
/* 806736E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806736E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806736EC  38 81 00 14 */	addi r4, r1, 0x14
/* 806736F0  7C 85 23 78 */	mr r5, r4
/* 806736F4  4B CD 36 79 */	bl PSMTXMultVec
/* 806736F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806736FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80673700  38 81 00 08 */	addi r4, r1, 8
/* 80673704  7C 85 23 78 */	mr r5, r4
/* 80673708  4B CD 36 65 */	bl PSMTXMultVec
/* 8067370C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80673710  4B 99 96 55 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80673714  38 61 00 14 */	addi r3, r1, 0x14
/* 80673718  4B 99 96 BD */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 8067371C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80673720  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80673724  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80673728  4B 99 8D 0D */	bl mDoMtx_YrotM__FPA4_fs
/* 8067372C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80673730  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80673734  80 9F 05 80 */	lwz r4, 0x580(r31)
/* 80673738  38 84 00 24 */	addi r4, r4, 0x24
/* 8067373C  4B CD 2D 75 */	bl PSMTXCopy
/* 80673740  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80673744  4B 99 96 21 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80673748  38 61 00 08 */	addi r3, r1, 8
/* 8067374C  4B 99 96 89 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80673750  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80673754  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80673758  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 8067375C  38 04 7F FF */	addi r0, r4, 0x7fff
/* 80673760  7C 04 07 34 */	extsh r4, r0
/* 80673764  4B 99 8C D1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80673768  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8067376C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80673770  80 9F 05 84 */	lwz r4, 0x584(r31)
/* 80673774  38 84 00 24 */	addi r4, r4, 0x24
/* 80673778  4B CD 2D 39 */	bl PSMTXCopy
lbl_8067377C:
/* 8067377C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80673780  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80673784  7C 08 03 A6 */	mtlr r0
/* 80673788  38 21 00 30 */	addi r1, r1, 0x30
/* 8067378C  4E 80 00 20 */	blr 
