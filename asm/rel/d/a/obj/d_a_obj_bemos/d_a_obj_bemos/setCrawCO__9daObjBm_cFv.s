lbl_80BAF80C:
/* 80BAF80C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BAF810  7C 08 02 A6 */	mflr r0
/* 80BAF814  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BAF818  39 61 00 40 */	addi r11, r1, 0x40
/* 80BAF81C  4B 7B 29 AC */	b _savegpr_24
/* 80BAF820  7C 78 1B 78 */	mr r24, r3
/* 80BAF824  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 80BAF828  4B 45 D5 3C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BAF82C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BAF830  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BAF834  A8 98 04 B6 */	lha r4, 0x4b6(r24)
/* 80BAF838  4B 45 CB FC */	b mDoMtx_YrotM__FPA4_fs
/* 80BAF83C  3B 20 00 00 */	li r25, 0
/* 80BAF840  3B E0 00 00 */	li r31, 0
/* 80BAF844  3B C0 00 00 */	li r30, 0
/* 80BAF848  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BAF84C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BAF850  3B 63 23 3C */	addi r27, r3, 0x233c
/* 80BAF854  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BAF858  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 80BAF85C  3C 60 80 BB */	lis r3, l_craw_offset@ha
/* 80BAF860  3B A3 37 E8 */	addi r29, r3, l_craw_offset@l
lbl_80BAF864:
/* 80BAF864  7F 83 E3 78 */	mr r3, r28
/* 80BAF868  7C 9D F2 14 */	add r4, r29, r30
/* 80BAF86C  38 A1 00 08 */	addi r5, r1, 8
/* 80BAF870  4B 79 74 FC */	b PSMTXMultVec
/* 80BAF874  7F 58 FA 14 */	add r26, r24, r31
/* 80BAF878  38 7A 0B C0 */	addi r3, r26, 0xbc0
/* 80BAF87C  38 81 00 08 */	addi r4, r1, 8
/* 80BAF880  4B 6B F9 5C */	b SetC__8cM3dGCylFRC4cXyz
/* 80BAF884  7F 63 DB 78 */	mr r3, r27
/* 80BAF888  38 9A 0A 9C */	addi r4, r26, 0xa9c
/* 80BAF88C  4B 6B 53 1C */	b Set__4cCcSFP8cCcD_Obj
/* 80BAF890  3B 39 00 01 */	addi r25, r25, 1
/* 80BAF894  2C 19 00 04 */	cmpwi r25, 4
/* 80BAF898  3B FF 01 3C */	addi r31, r31, 0x13c
/* 80BAF89C  3B DE 00 0C */	addi r30, r30, 0xc
/* 80BAF8A0  41 80 FF C4 */	blt lbl_80BAF864
/* 80BAF8A4  39 61 00 40 */	addi r11, r1, 0x40
/* 80BAF8A8  4B 7B 29 6C */	b _restgpr_24
/* 80BAF8AC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BAF8B0  7C 08 03 A6 */	mtlr r0
/* 80BAF8B4  38 21 00 40 */	addi r1, r1, 0x40
/* 80BAF8B8  4E 80 00 20 */	blr 
