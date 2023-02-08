lbl_80036AEC:
/* 80036AEC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80036AF0  7C 08 02 A6 */	mflr r0
/* 80036AF4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80036AF8  39 61 00 50 */	addi r11, r1, 0x50
/* 80036AFC  48 32 B6 DD */	bl _savegpr_28
/* 80036B00  7C 7C 1B 78 */	mr r28, r3
/* 80036B04  7C 9F 23 78 */	mr r31, r4
/* 80036B08  7C DD 33 78 */	mr r29, r6
/* 80036B0C  7C FE 3B 78 */	mr r30, r7
/* 80036B10  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 80036B14  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 80036B18  90 01 00 38 */	stw r0, 0x38(r1)
/* 80036B1C  38 61 00 20 */	addi r3, r1, 0x20
/* 80036B20  38 C1 00 14 */	addi r6, r1, 0x14
/* 80036B24  4B FF F1 A5 */	bl setNowLine__9dJntCol_cFP8cM3dGLinPC4cXyzPC5csXyzP4cXyz
/* 80036B28  7F 83 E3 78 */	mr r3, r28
/* 80036B2C  38 81 00 20 */	addi r4, r1, 0x20
/* 80036B30  7F E5 FB 78 */	mr r5, r31
/* 80036B34  38 C1 00 08 */	addi r6, r1, 8
/* 80036B38  38 E0 00 00 */	li r7, 0
/* 80036B3C  4B FF F2 8D */	bl searchNearPos__9dJntCol_cCFPC8cM3dGLinPC4cXyzP4cXyzi
/* 80036B40  2C 03 00 00 */	cmpwi r3, 0
/* 80036B44  40 80 00 18 */	bge lbl_80036B5C
/* 80036B48  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 80036B4C  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 80036B50  90 01 00 38 */	stw r0, 0x38(r1)
/* 80036B54  38 60 FF FD */	li r3, -3
/* 80036B58  48 00 00 D4 */	b lbl_80036C2C
lbl_80036B5C:
/* 80036B5C  80 9C 00 00 */	lwz r4, 0(r28)
/* 80036B60  1C 03 00 0C */	mulli r0, r3, 0xc
/* 80036B64  7F E4 02 14 */	add r31, r4, r0
/* 80036B68  88 1F 00 01 */	lbz r0, 1(r31)
/* 80036B6C  28 00 00 00 */	cmplwi r0, 0
/* 80036B70  40 82 00 18 */	bne lbl_80036B88
/* 80036B74  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 80036B78  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 80036B7C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80036B80  38 60 FF FD */	li r3, -3
/* 80036B84  48 00 00 A8 */	b lbl_80036C2C
lbl_80036B88:
/* 80036B88  28 00 00 02 */	cmplwi r0, 2
/* 80036B8C  40 82 00 18 */	bne lbl_80036BA4
/* 80036B90  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 80036B94  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 80036B98  90 01 00 38 */	stw r0, 0x38(r1)
/* 80036B9C  38 60 FF FF */	li r3, -1
/* 80036BA0  48 00 00 8C */	b lbl_80036C2C
lbl_80036BA4:
/* 80036BA4  28 00 00 03 */	cmplwi r0, 3
/* 80036BA8  40 82 00 18 */	bne lbl_80036BC0
/* 80036BAC  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 80036BB0  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 80036BB4  90 01 00 38 */	stw r0, 0x38(r1)
/* 80036BB8  38 60 FF FE */	li r3, -2
/* 80036BBC  48 00 00 70 */	b lbl_80036C2C
lbl_80036BC0:
/* 80036BC0  80 7C 00 04 */	lwz r3, 4(r28)
/* 80036BC4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80036BC8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80036BCC  A8 1F 00 02 */	lha r0, 2(r31)
/* 80036BD0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80036BD4  7C 63 02 14 */	add r3, r3, r0
/* 80036BD8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80036BDC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80036BE0  48 30 F8 D1 */	bl PSMTXCopy
/* 80036BE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80036BE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80036BEC  7C 64 1B 78 */	mr r4, r3
/* 80036BF0  48 30 F9 C1 */	bl PSMTXInverse
/* 80036BF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80036BF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80036BFC  38 81 00 14 */	addi r4, r1, 0x14
/* 80036C00  7F C5 F3 78 */	mr r5, r30
/* 80036C04  48 31 02 49 */	bl PSMTXMultVecSR
/* 80036C08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80036C0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80036C10  38 81 00 08 */	addi r4, r1, 8
/* 80036C14  7F A5 EB 78 */	mr r5, r29
/* 80036C18  48 31 01 55 */	bl PSMTXMultVec
/* 80036C1C  A8 7F 00 02 */	lha r3, 2(r31)
/* 80036C20  3C 80 80 3A */	lis r4, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 80036C24  38 04 78 F8 */	addi r0, r4, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 80036C28  90 01 00 38 */	stw r0, 0x38(r1)
lbl_80036C2C:
/* 80036C2C  39 61 00 50 */	addi r11, r1, 0x50
/* 80036C30  48 32 B5 F5 */	bl _restgpr_28
/* 80036C34  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80036C38  7C 08 03 A6 */	mtlr r0
/* 80036C3C  38 21 00 50 */	addi r1, r1, 0x50
/* 80036C40  4E 80 00 20 */	blr 
