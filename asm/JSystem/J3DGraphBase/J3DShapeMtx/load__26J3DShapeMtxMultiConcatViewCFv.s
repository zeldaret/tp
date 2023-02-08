lbl_80313FA4:
/* 80313FA4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80313FA8  7C 08 02 A6 */	mflr r0
/* 80313FAC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80313FB0  39 61 00 50 */	addi r11, r1, 0x50
/* 80313FB4  48 04 E2 0D */	bl _savegpr_22
/* 80313FB8  7C 77 1B 78 */	mr r23, r3
/* 80313FBC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80313FC0  3B 83 4A C8 */	addi r28, r3, j3dSys@l /* 0x80434AC8@l */
/* 80313FC4  80 BC 00 38 */	lwz r5, 0x38(r28)
/* 80313FC8  80 65 00 84 */	lwz r3, 0x84(r5)
/* 80313FCC  80 83 00 34 */	lwz r4, 0x34(r3)
/* 80313FD0  90 8D 90 38 */	stw r4, sMtxPtrTbl__21J3DShapeMtxConcatView(r13)
/* 80313FD4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80313FD8  38 6D 90 38 */	la r3, sMtxPtrTbl__21J3DShapeMtxConcatView(r13) /* 804515B8-_SDA_BASE_ */
/* 80313FDC  90 03 00 04 */	stw r0, 4(r3)
/* 80313FE0  88 0D 90 31 */	lbz r0, struct_804515B0+0x1(r13)
/* 80313FE4  28 00 00 00 */	cmplwi r0, 0
/* 80313FE8  40 82 00 B4 */	bne lbl_8031409C
/* 80313FEC  80 0D 90 28 */	lwz r0, sCurrentPipeline__11J3DShapeMtx(r13)
/* 80313FF0  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80313FF4  3C 60 80 3D */	lis r3, sMtxLoadPipeline__21J3DShapeMtxConcatView@ha /* 0x803CDA20@ha */
/* 80313FF8  38 03 DA 20 */	addi r0, r3, sMtxLoadPipeline__21J3DShapeMtxConcatView@l /* 0x803CDA20@l */
/* 80313FFC  7C 80 22 14 */	add r4, r0, r4
/* 80314000  80 64 00 00 */	lwz r3, 0(r4)
/* 80314004  80 04 00 04 */	lwz r0, 4(r4)
/* 80314008  90 61 00 14 */	stw r3, 0x14(r1)
/* 8031400C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80314010  80 04 00 08 */	lwz r0, 8(r4)
/* 80314014  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80314018  A3 57 00 08 */	lhz r26, 8(r23)
/* 8031401C  3B 60 00 00 */	li r27, 0
/* 80314020  3A C0 00 00 */	li r22, 0
/* 80314024  83 17 00 0C */	lwz r24, 0xc(r23)
/* 80314028  48 00 00 68 */	b lbl_80314090
lbl_8031402C:
/* 8031402C  7C B8 B2 2E */	lhzx r5, r24, r22
/* 80314030  28 05 FF FF */	cmplwi r5, 0xffff
/* 80314034  41 82 00 54 */	beq lbl_80314088
/* 80314038  80 7C 00 38 */	lwz r3, 0x38(r28)
/* 8031403C  80 83 00 04 */	lwz r4, 4(r3)
/* 80314040  80 64 00 4C */	lwz r3, 0x4c(r4)
/* 80314044  54 A0 0B FC */	rlwinm r0, r5, 1, 0xf, 0x1e
/* 80314048  7F 23 02 2E */	lhzx r25, r3, r0
/* 8031404C  80 64 00 48 */	lwz r3, 0x48(r4)
/* 80314050  7C 03 28 AE */	lbzx r0, r3, r5
/* 80314054  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80314058  38 6D 90 38 */	la r3, sMtxPtrTbl__21J3DShapeMtxConcatView(r13) /* 804515B8-_SDA_BASE_ */
/* 8031405C  7C 83 00 2E */	lwzx r4, r3, r0
/* 80314060  90 9C 01 04 */	stw r4, 0x104(r28)
/* 80314064  38 60 00 15 */	li r3, 0x15
/* 80314068  38 A0 00 30 */	li r5, 0x30
/* 8031406C  48 04 7A BD */	bl GXSetArray
/* 80314070  7E E3 BB 78 */	mr r3, r23
/* 80314074  7F 64 DB 78 */	mr r4, r27
/* 80314078  7F 25 CB 78 */	mr r5, r25
/* 8031407C  39 81 00 14 */	addi r12, r1, 0x14
/* 80314080  48 04 E0 05 */	bl __ptmf_scall
/* 80314084  60 00 00 00 */	nop 
lbl_80314088:
/* 80314088  3B 7B 00 01 */	addi r27, r27, 1
/* 8031408C  3A D6 00 02 */	addi r22, r22, 2
lbl_80314090:
/* 80314090  7C 1B D0 00 */	cmpw r27, r26
/* 80314094  41 80 FF 98 */	blt lbl_8031402C
/* 80314098  48 00 00 EC */	b lbl_80314184
lbl_8031409C:
/* 8031409C  80 65 00 04 */	lwz r3, 4(r5)
/* 803140A0  83 63 00 40 */	lwz r27, 0x40(r3)
/* 803140A4  90 9C 01 04 */	stw r4, 0x104(r28)
/* 803140A8  38 60 00 15 */	li r3, 0x15
/* 803140AC  38 A0 00 30 */	li r5, 0x30
/* 803140B0  48 04 7A 79 */	bl GXSetArray
/* 803140B4  A3 57 00 08 */	lhz r26, 8(r23)
/* 803140B8  3B 20 00 00 */	li r25, 0
/* 803140BC  3A C0 00 00 */	li r22, 0
/* 803140C0  3C 60 80 3D */	lis r3, sMtxLoadLODPipeline__21J3DShapeMtxConcatView@ha /* 0x803CDA80@ha */
/* 803140C4  3B A3 DA 80 */	addi r29, r3, sMtxLoadLODPipeline__21J3DShapeMtxConcatView@l /* 0x803CDA80@l */
/* 803140C8  83 D7 00 0C */	lwz r30, 0xc(r23)
/* 803140CC  48 00 00 B0 */	b lbl_8031417C
lbl_803140D0:
/* 803140D0  80 0D 90 28 */	lwz r0, sCurrentPipeline__11J3DShapeMtx(r13)
/* 803140D4  1C A0 00 0C */	mulli r5, r0, 0xc
/* 803140D8  7C 9D 2A 14 */	add r4, r29, r5
/* 803140DC  80 64 00 00 */	lwz r3, 0(r4)
/* 803140E0  80 04 00 04 */	lwz r0, 4(r4)
/* 803140E4  90 61 00 08 */	stw r3, 8(r1)
/* 803140E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 803140EC  80 04 00 08 */	lwz r0, 8(r4)
/* 803140F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 803140F4  7C 9E B2 2E */	lhzx r4, r30, r22
/* 803140F8  28 04 FF FF */	cmplwi r4, 0xffff
/* 803140FC  41 82 00 78 */	beq lbl_80314174
/* 80314100  54 80 0B FC */	rlwinm r0, r4, 1, 0xf, 0x1e
/* 80314104  7F 1B 02 2E */	lhzx r24, r27, r0
/* 80314108  3C 60 80 43 */	lis r3, sMtxLoadCache__11J3DShapeMtx@ha /* 0x80434C80@ha */
/* 8031410C  3B E3 4C 80 */	addi r31, r3, sMtxLoadCache__11J3DShapeMtx@l /* 0x80434C80@l */
/* 80314110  7C 1F B2 2E */	lhzx r0, r31, r22
/* 80314114  7C 18 00 40 */	cmplw r24, r0
/* 80314118  41 82 00 5C */	beq lbl_80314174
/* 8031411C  80 7C 00 38 */	lwz r3, 0x38(r28)
/* 80314120  80 63 00 04 */	lwz r3, 4(r3)
/* 80314124  80 63 00 48 */	lwz r3, 0x48(r3)
/* 80314128  7C 03 20 AE */	lbzx r0, r3, r4
/* 8031412C  28 00 00 00 */	cmplwi r0, 0
/* 80314130  40 82 00 28 */	bne lbl_80314158
/* 80314134  3C 60 80 3D */	lis r3, sMtxLoadPipeline__21J3DShapeMtxConcatView@ha /* 0x803CDA20@ha */
/* 80314138  38 03 DA 20 */	addi r0, r3, sMtxLoadPipeline__21J3DShapeMtxConcatView@l /* 0x803CDA20@l */
/* 8031413C  7C 80 2A 14 */	add r4, r0, r5
/* 80314140  80 64 00 00 */	lwz r3, 0(r4)
/* 80314144  80 04 00 04 */	lwz r0, 4(r4)
/* 80314148  90 61 00 08 */	stw r3, 8(r1)
/* 8031414C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80314150  80 04 00 08 */	lwz r0, 8(r4)
/* 80314154  90 01 00 10 */	stw r0, 0x10(r1)
lbl_80314158:
/* 80314158  7E E3 BB 78 */	mr r3, r23
/* 8031415C  7F 24 CB 78 */	mr r4, r25
/* 80314160  7F 05 C3 78 */	mr r5, r24
/* 80314164  39 81 00 08 */	addi r12, r1, 8
/* 80314168  48 04 DF 1D */	bl __ptmf_scall
/* 8031416C  60 00 00 00 */	nop 
/* 80314170  7F 1F B3 2E */	sthx r24, r31, r22
lbl_80314174:
/* 80314174  3B 39 00 01 */	addi r25, r25, 1
/* 80314178  3A D6 00 02 */	addi r22, r22, 2
lbl_8031417C:
/* 8031417C  7C 19 D0 00 */	cmpw r25, r26
/* 80314180  41 80 FF 50 */	blt lbl_803140D0
lbl_80314184:
/* 80314184  39 61 00 50 */	addi r11, r1, 0x50
/* 80314188  48 04 E0 85 */	bl _restgpr_22
/* 8031418C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80314190  7C 08 03 A6 */	mtlr r0
/* 80314194  38 21 00 50 */	addi r1, r1, 0x50
/* 80314198  4E 80 00 20 */	blr 
