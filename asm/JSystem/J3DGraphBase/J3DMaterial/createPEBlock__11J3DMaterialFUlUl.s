lbl_80315F60:
/* 80315F60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80315F64  7C 08 02 A6 */	mflr r0
/* 80315F68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80315F6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80315F70  3B E0 00 00 */	li r31, 0
/* 80315F74  28 03 00 00 */	cmplwi r3, 0
/* 80315F78  40 82 00 A0 */	bne lbl_80316018
/* 80315F7C  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 80315F80  41 82 00 30 */	beq lbl_80315FB0
/* 80315F84  38 60 00 04 */	li r3, 4
/* 80315F88  4B FB 8C C5 */	bl __nw__FUl
/* 80315F8C  28 03 00 00 */	cmplwi r3, 0
/* 80315F90  41 82 01 5C */	beq lbl_803160EC
/* 80315F94  3C 80 80 3D */	lis r4, __vt__10J3DPEBlock@ha /* 0x803CDD20@ha */
/* 80315F98  38 04 DD 20 */	addi r0, r4, __vt__10J3DPEBlock@l /* 0x803CDD20@l */
/* 80315F9C  90 03 00 00 */	stw r0, 0(r3)
/* 80315FA0  3C 80 80 3D */	lis r4, __vt__13J3DPEBlockOpa@ha /* 0x803CE890@ha */
/* 80315FA4  38 04 E8 90 */	addi r0, r4, __vt__13J3DPEBlockOpa@l /* 0x803CE890@l */
/* 80315FA8  90 03 00 00 */	stw r0, 0(r3)
/* 80315FAC  48 00 01 40 */	b lbl_803160EC
lbl_80315FB0:
/* 80315FB0  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 80315FB4  41 82 00 30 */	beq lbl_80315FE4
/* 80315FB8  38 60 00 04 */	li r3, 4
/* 80315FBC  4B FB 8C 91 */	bl __nw__FUl
/* 80315FC0  28 03 00 00 */	cmplwi r3, 0
/* 80315FC4  41 82 01 28 */	beq lbl_803160EC
/* 80315FC8  3C 80 80 3D */	lis r4, __vt__10J3DPEBlock@ha /* 0x803CDD20@ha */
/* 80315FCC  38 04 DD 20 */	addi r0, r4, __vt__10J3DPEBlock@l /* 0x803CDD20@l */
/* 80315FD0  90 03 00 00 */	stw r0, 0(r3)
/* 80315FD4  3C 80 80 3D */	lis r4, __vt__17J3DPEBlockTexEdge@ha /* 0x803CE814@ha */
/* 80315FD8  38 04 E8 14 */	addi r0, r4, __vt__17J3DPEBlockTexEdge@l /* 0x803CE814@l */
/* 80315FDC  90 03 00 00 */	stw r0, 0(r3)
/* 80315FE0  48 00 01 0C */	b lbl_803160EC
lbl_80315FE4:
/* 80315FE4  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 80315FE8  41 82 00 30 */	beq lbl_80316018
/* 80315FEC  38 60 00 04 */	li r3, 4
/* 80315FF0  4B FB 8C 5D */	bl __nw__FUl
/* 80315FF4  28 03 00 00 */	cmplwi r3, 0
/* 80315FF8  41 82 00 F4 */	beq lbl_803160EC
/* 80315FFC  3C 80 80 3D */	lis r4, __vt__10J3DPEBlock@ha /* 0x803CDD20@ha */
/* 80316000  38 04 DD 20 */	addi r0, r4, __vt__10J3DPEBlock@l /* 0x803CDD20@l */
/* 80316004  90 03 00 00 */	stw r0, 0(r3)
/* 80316008  3C 80 80 3D */	lis r4, __vt__13J3DPEBlockXlu@ha /* 0x803CE798@ha */
/* 8031600C  38 04 E7 98 */	addi r0, r4, __vt__13J3DPEBlockXlu@l /* 0x803CE798@l */
/* 80316010  90 03 00 00 */	stw r0, 0(r3)
/* 80316014  48 00 00 D8 */	b lbl_803160EC
lbl_80316018:
/* 80316018  3C 03 F0 00 */	addis r0, r3, 0xf000
/* 8031601C  28 00 00 00 */	cmplwi r0, 0
/* 80316020  40 82 00 6C */	bne lbl_8031608C
/* 80316024  38 60 00 40 */	li r3, 0x40
/* 80316028  4B FB 8C 25 */	bl __nw__FUl
/* 8031602C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80316030  41 82 00 B8 */	beq lbl_803160E8
/* 80316034  3C 60 80 3D */	lis r3, __vt__10J3DPEBlock@ha /* 0x803CDD20@ha */
/* 80316038  38 03 DD 20 */	addi r0, r3, __vt__10J3DPEBlock@l /* 0x803CDD20@l */
/* 8031603C  90 1F 00 00 */	stw r0, 0(r31)
/* 80316040  3C 60 80 3D */	lis r3, __vt__14J3DPEBlockFull@ha /* 0x803CDFF0@ha */
/* 80316044  38 03 DF F0 */	addi r0, r3, __vt__14J3DPEBlockFull@l /* 0x803CDFF0@l */
/* 80316048  90 1F 00 00 */	stw r0, 0(r31)
/* 8031604C  38 7F 00 04 */	addi r3, r31, 4
/* 80316050  3C 80 80 3A */	lis r4, j3dDefaultFogInfo@ha /* 0x803A1FBC@ha */
/* 80316054  38 84 1F BC */	addi r4, r4, j3dDefaultFogInfo@l /* 0x803A1FBC@l */
/* 80316058  48 00 F7 A9 */	bl __as__10J3DFogInfoFRC10J3DFogInfo
/* 8031605C  A0 02 C9 FA */	lhz r0, struct_804563F8+0x2(r2)
/* 80316060  B0 1F 00 30 */	sth r0, 0x30(r31)
/* 80316064  38 00 00 00 */	li r0, 0
/* 80316068  98 1F 00 32 */	stb r0, 0x32(r31)
/* 8031606C  98 1F 00 33 */	stb r0, 0x33(r31)
/* 80316070  80 02 C9 EC */	lwz r0, j3dDefaultBlendInfo(r2)
/* 80316074  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80316078  A0 02 C9 FC */	lhz r0, j3dDefaultZModeID(r2)
/* 8031607C  B0 1F 00 38 */	sth r0, 0x38(r31)
/* 80316080  7F E3 FB 78 */	mr r3, r31
/* 80316084  48 00 1A D5 */	bl initialize__14J3DPEBlockFullFv
/* 80316088  48 00 00 60 */	b lbl_803160E8
lbl_8031608C:
/* 8031608C  3C 03 E0 00 */	addis r0, r3, 0xe000
/* 80316090  28 00 00 00 */	cmplwi r0, 0
/* 80316094  40 82 00 54 */	bne lbl_803160E8
/* 80316098  38 60 00 10 */	li r3, 0x10
/* 8031609C  4B FB 8B B1 */	bl __nw__FUl
/* 803160A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 803160A4  41 82 00 44 */	beq lbl_803160E8
/* 803160A8  3C 80 80 3D */	lis r4, __vt__10J3DPEBlock@ha /* 0x803CDD20@ha */
/* 803160AC  38 04 DD 20 */	addi r0, r4, __vt__10J3DPEBlock@l /* 0x803CDD20@l */
/* 803160B0  90 1F 00 00 */	stw r0, 0(r31)
/* 803160B4  3C 80 80 3D */	lis r4, __vt__16J3DPEBlockFogOff@ha /* 0x803CE06C@ha */
/* 803160B8  38 04 E0 6C */	addi r0, r4, __vt__16J3DPEBlockFogOff@l /* 0x803CE06C@l */
/* 803160BC  90 1F 00 00 */	stw r0, 0(r31)
/* 803160C0  A0 02 C9 FA */	lhz r0, struct_804563F8+0x2(r2)
/* 803160C4  B0 1F 00 04 */	sth r0, 4(r31)
/* 803160C8  38 00 00 00 */	li r0, 0
/* 803160CC  98 1F 00 06 */	stb r0, 6(r31)
/* 803160D0  98 1F 00 07 */	stb r0, 7(r31)
/* 803160D4  80 02 C9 EC */	lwz r0, j3dDefaultBlendInfo(r2)
/* 803160D8  90 1F 00 08 */	stw r0, 8(r31)
/* 803160DC  A0 02 C9 FC */	lhz r0, j3dDefaultZModeID(r2)
/* 803160E0  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 803160E4  48 00 1A 51 */	bl initialize__16J3DPEBlockFogOffFv
lbl_803160E8:
/* 803160E8  7F E3 FB 78 */	mr r3, r31
lbl_803160EC:
/* 803160EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803160F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803160F4  7C 08 03 A6 */	mtlr r0
/* 803160F8  38 21 00 10 */	addi r1, r1, 0x10
/* 803160FC  4E 80 00 20 */	blr 
