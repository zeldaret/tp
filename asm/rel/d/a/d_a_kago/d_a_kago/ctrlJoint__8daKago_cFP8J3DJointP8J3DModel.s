lbl_80854220:
/* 80854220  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80854224  7C 08 02 A6 */	mflr r0
/* 80854228  90 01 00 24 */	stw r0, 0x24(r1)
/* 8085422C  39 61 00 20 */	addi r11, r1, 0x20
/* 80854230  4B B0 DF A9 */	bl _savegpr_28
/* 80854234  7C 7C 1B 78 */	mr r28, r3
/* 80854238  7C BD 2B 78 */	mr r29, r5
/* 8085423C  A3 E4 00 14 */	lhz r31, 0x14(r4)
/* 80854240  80 65 00 84 */	lwz r3, 0x84(r5)
/* 80854244  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80854248  1F DF 00 30 */	mulli r30, r31, 0x30
/* 8085424C  7C 60 F2 14 */	add r3, r0, r30
/* 80854250  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80854254  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80854258  4B AF 22 59 */	bl PSMTXCopy
/* 8085425C  2C 1F 00 03 */	cmpwi r31, 3
/* 80854260  41 82 00 14 */	beq lbl_80854274
/* 80854264  2C 1F 00 05 */	cmpwi r31, 5
/* 80854268  41 82 00 0C */	beq lbl_80854274
/* 8085426C  2C 1F 00 06 */	cmpwi r31, 6
/* 80854270  40 82 00 24 */	bne lbl_80854294
lbl_80854274:
/* 80854274  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80854278  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8085427C  A8 9C 07 1A */	lha r4, 0x71a(r28)
/* 80854280  4B 7B 81 B5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80854284  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80854288  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8085428C  A8 9C 07 18 */	lha r4, 0x718(r28)
/* 80854290  4B 7B 82 3D */	bl mDoMtx_ZrotM__FPA4_fs
lbl_80854294:
/* 80854294  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80854298  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8085429C  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 808542A0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 808542A4  7C 80 F2 14 */	add r4, r0, r30
/* 808542A8  4B AF 22 09 */	bl PSMTXCopy
/* 808542AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 808542B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 808542B4  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 808542B8  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 808542BC  4B AF 21 F5 */	bl PSMTXCopy
/* 808542C0  38 60 00 01 */	li r3, 1
/* 808542C4  39 61 00 20 */	addi r11, r1, 0x20
/* 808542C8  4B B0 DF 5D */	bl _restgpr_28
/* 808542CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 808542D0  7C 08 03 A6 */	mtlr r0
/* 808542D4  38 21 00 20 */	addi r1, r1, 0x20
/* 808542D8  4E 80 00 20 */	blr 
