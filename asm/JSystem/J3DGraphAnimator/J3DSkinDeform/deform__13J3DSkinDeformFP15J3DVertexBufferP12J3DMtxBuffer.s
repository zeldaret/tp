lbl_8032E064:
/* 8032E064  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032E068  7C 08 02 A6 */	mflr r0
/* 8032E06C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032E070  39 61 00 20 */	addi r11, r1, 0x20
/* 8032E074  48 03 41 69 */	bl _savegpr_29
/* 8032E078  7C 7E 1B 78 */	mr r30, r3
/* 8032E07C  7C 9F 23 78 */	mr r31, r4
/* 8032E080  7C BD 2B 78 */	mr r29, r5
/* 8032E084  80 85 00 00 */	lwz r4, 0(r5)
/* 8032E088  80 04 00 08 */	lwz r0, 8(r4)
/* 8032E08C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8032E090  41 82 00 0C */	beq lbl_8032E09C
/* 8032E094  7F A4 EB 78 */	mr r4, r29
/* 8032E098  4B FF F7 E5 */	bl calcAnmInvJointMtx__13J3DSkinDeformFP12J3DMtxBuffer
lbl_8032E09C:
/* 8032E09C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8032E0A0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8032E0A4  41 82 00 5C */	beq lbl_8032E100
/* 8032E0A8  80 7D 00 00 */	lwz r3, 0(r29)
/* 8032E0AC  80 03 00 08 */	lwz r0, 8(r3)
/* 8032E0B0  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8032E0B4  41 82 00 18 */	beq lbl_8032E0CC
/* 8032E0B8  7F C3 F3 78 */	mr r3, r30
/* 8032E0BC  7F E4 FB 78 */	mr r4, r31
/* 8032E0C0  7F A5 EB 78 */	mr r5, r29
/* 8032E0C4  4B FF F8 31 */	bl deformFastVtxPos_F32__13J3DSkinDeformCFP15J3DVertexBufferP12J3DMtxBuffer
/* 8032E0C8  48 00 00 38 */	b lbl_8032E100
lbl_8032E0CC:
/* 8032E0CC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8032E0D0  80 03 00 50 */	lwz r0, 0x50(r3)
/* 8032E0D4  2C 00 00 04 */	cmpwi r0, 4
/* 8032E0D8  40 82 00 18 */	bne lbl_8032E0F0
/* 8032E0DC  7F C3 F3 78 */	mr r3, r30
/* 8032E0E0  7F E4 FB 78 */	mr r4, r31
/* 8032E0E4  7F A5 EB 78 */	mr r5, r29
/* 8032E0E8  4B FF FA 69 */	bl deformVtxPos_F32__13J3DSkinDeformCFP15J3DVertexBufferP12J3DMtxBuffer
/* 8032E0EC  48 00 00 14 */	b lbl_8032E100
lbl_8032E0F0:
/* 8032E0F0  7F C3 F3 78 */	mr r3, r30
/* 8032E0F4  7F E4 FB 78 */	mr r4, r31
/* 8032E0F8  7F A5 EB 78 */	mr r5, r29
/* 8032E0FC  4B FF FB 79 */	bl deformVtxPos_S16__13J3DSkinDeformCFP15J3DVertexBufferP12J3DMtxBuffer
lbl_8032E100:
/* 8032E100  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8032E104  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8032E108  41 82 00 60 */	beq lbl_8032E168
/* 8032E10C  80 7D 00 00 */	lwz r3, 0(r29)
/* 8032E110  80 03 00 08 */	lwz r0, 8(r3)
/* 8032E114  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8032E118  41 82 00 18 */	beq lbl_8032E130
/* 8032E11C  7F C3 F3 78 */	mr r3, r30
/* 8032E120  7F E4 FB 78 */	mr r4, r31
/* 8032E124  7F A5 EB 78 */	mr r5, r29
/* 8032E128  4B FF F8 F5 */	bl deformFastVtxNrm_F32__13J3DSkinDeformCFP15J3DVertexBufferP12J3DMtxBuffer
/* 8032E12C  48 00 00 3C */	b lbl_8032E168
lbl_8032E130:
/* 8032E130  7F C3 F3 78 */	mr r3, r30
/* 8032E134  7F A4 EB 78 */	mr r4, r29
/* 8032E138  4B FF F4 8D */	bl calcNrmMtx__13J3DSkinDeformFP12J3DMtxBuffer
/* 8032E13C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8032E140  80 03 00 58 */	lwz r0, 0x58(r3)
/* 8032E144  2C 00 00 04 */	cmpwi r0, 4
/* 8032E148  40 82 00 14 */	bne lbl_8032E15C
/* 8032E14C  7F C3 F3 78 */	mr r3, r30
/* 8032E150  7F E4 FB 78 */	mr r4, r31
/* 8032E154  4B FF FC 65 */	bl deformVtxNrm_F32__13J3DSkinDeformCFP15J3DVertexBuffer
/* 8032E158  48 00 00 10 */	b lbl_8032E168
lbl_8032E15C:
/* 8032E15C  7F C3 F3 78 */	mr r3, r30
/* 8032E160  7F E4 FB 78 */	mr r4, r31
/* 8032E164  4B FF FD 59 */	bl deformVtxNrm_S16__13J3DSkinDeformCFP15J3DVertexBuffer
lbl_8032E168:
/* 8032E168  39 61 00 20 */	addi r11, r1, 0x20
/* 8032E16C  48 03 40 BD */	bl _restgpr_29
/* 8032E170  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032E174  7C 08 03 A6 */	mtlr r0
/* 8032E178  38 21 00 20 */	addi r1, r1, 0x20
/* 8032E17C  4E 80 00 20 */	blr 
