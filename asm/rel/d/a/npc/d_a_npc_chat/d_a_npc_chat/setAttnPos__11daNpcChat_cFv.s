lbl_80982FA4:
/* 80982FA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80982FA8  7C 08 02 A6 */	mflr r0
/* 80982FAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80982FB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80982FB4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80982FB8  7C 7F 1B 78 */	mr r31, r3
/* 80982FBC  3C 60 80 98 */	lis r3, l_resMANa@ha /* 0x8098699C@ha */
/* 80982FC0  3B C3 69 9C */	addi r30, r3, l_resMANa@l /* 0x8098699C@l */
/* 80982FC4  A8 1F 0E 1C */	lha r0, 0xe1c(r31)
/* 80982FC8  2C 00 00 01 */	cmpwi r0, 1
/* 80982FCC  40 82 00 34 */	bne lbl_80983000
/* 80982FD0  38 60 00 00 */	li r3, 0
/* 80982FD4  7C 66 1B 78 */	mr r6, r3
/* 80982FD8  7C 65 1B 78 */	mr r5, r3
/* 80982FDC  7C 64 1B 78 */	mr r4, r3
/* 80982FE0  38 00 00 03 */	li r0, 3
/* 80982FE4  7C 09 03 A6 */	mtctr r0
lbl_80982FE8:
/* 80982FE8  7C FF 1A 14 */	add r7, r31, r3
/* 80982FEC  B0 C7 09 1A */	sth r6, 0x91a(r7)
/* 80982FF0  B0 A7 09 1C */	sth r5, 0x91c(r7)
/* 80982FF4  B0 87 09 1E */	sth r4, 0x91e(r7)
/* 80982FF8  38 63 00 06 */	addi r3, r3, 6
/* 80982FFC  42 00 FF EC */	bdnz lbl_80982FE8
lbl_80983000:
/* 80983000  7F E3 FB 78 */	mr r3, r31
/* 80983004  4B 7C F7 69 */	bl setMtx__8daNpcF_cFv
/* 80983008  C0 1E 05 88 */	lfs f0, 0x588(r30)
/* 8098300C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80983010  C0 1E 05 C4 */	lfs f0, 0x5c4(r30)
/* 80983014  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80983018  C0 1E 05 78 */	lfs f0, 0x578(r30)
/* 8098301C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80983020  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80983024  80 63 00 04 */	lwz r3, 4(r3)
/* 80983028  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8098302C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80983030  38 63 00 90 */	addi r3, r3, 0x90
/* 80983034  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80983038  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8098303C  4B 9C 34 75 */	bl PSMTXCopy
/* 80983040  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80983044  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80983048  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8098304C  D0 1F 08 E4 */	stfs f0, 0x8e4(r31)
/* 80983050  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80983054  D0 1F 08 E8 */	stfs f0, 0x8e8(r31)
/* 80983058  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8098305C  D0 1F 08 EC */	stfs f0, 0x8ec(r31)
/* 80983060  38 81 00 08 */	addi r4, r1, 8
/* 80983064  38 BF 05 38 */	addi r5, r31, 0x538
/* 80983068  4B 9C 3D 05 */	bl PSMTXMultVec
/* 8098306C  C0 1E 05 78 */	lfs f0, 0x578(r30)
/* 80983070  D0 01 00 08 */	stfs f0, 8(r1)
/* 80983074  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80983078  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8098307C  38 81 00 08 */	addi r4, r1, 8
/* 80983080  7C 85 23 78 */	mr r5, r4
/* 80983084  4B 9C 3C E9 */	bl PSMTXMultVec
/* 80983088  38 7F 08 E4 */	addi r3, r31, 0x8e4
/* 8098308C  38 81 00 08 */	addi r4, r1, 8
/* 80983090  4B 8E DB E5 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80983094  B0 7F 09 02 */	sth r3, 0x902(r31)
/* 80983098  38 7F 08 E4 */	addi r3, r31, 0x8e4
/* 8098309C  38 81 00 08 */	addi r4, r1, 8
/* 809830A0  4B 8E DB 65 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 809830A4  B0 7F 09 04 */	sth r3, 0x904(r31)
/* 809830A8  7F E3 FB 78 */	mr r3, r31
/* 809830AC  88 9F 0E 10 */	lbz r4, 0xe10(r31)
/* 809830B0  4B FF E4 2D */	bl setAttention__11daNpcChat_cFi
/* 809830B4  38 7F 0D C0 */	addi r3, r31, 0xdc0
/* 809830B8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 809830BC  4B 8E C1 21 */	bl SetC__8cM3dGCylFRC4cXyz
/* 809830C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809830C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809830C8  38 63 23 3C */	addi r3, r3, 0x233c
/* 809830CC  38 9F 0C 9C */	addi r4, r31, 0xc9c
/* 809830D0  4B 8E 1A D9 */	bl Set__4cCcSFP8cCcD_Obj
/* 809830D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809830D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809830DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809830E0  7C 08 03 A6 */	mtlr r0
/* 809830E4  38 21 00 20 */	addi r1, r1, 0x20
/* 809830E8  4E 80 00 20 */	blr 
