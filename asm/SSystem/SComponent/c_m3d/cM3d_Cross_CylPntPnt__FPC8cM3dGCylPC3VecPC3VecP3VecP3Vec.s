lbl_8026D044:
/* 8026D044  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8026D048  7C 08 02 A6 */	mflr r0
/* 8026D04C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8026D050  39 61 00 40 */	addi r11, r1, 0x40
/* 8026D054  48 0F 51 89 */	bl _savegpr_29
/* 8026D058  7C 7D 1B 78 */	mr r29, r3
/* 8026D05C  7C DE 33 78 */	mr r30, r6
/* 8026D060  7C FF 3B 78 */	mr r31, r7
/* 8026D064  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026D068  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026D06C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8026D070  38 61 00 08 */	addi r3, r1, 8
/* 8026D074  48 00 22 A9 */	bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 8026D078  7F A3 EB 78 */	mr r3, r29
/* 8026D07C  38 81 00 08 */	addi r4, r1, 8
/* 8026D080  7F C5 F3 78 */	mr r5, r30
/* 8026D084  7F E6 FB 78 */	mr r6, r31
/* 8026D088  4B FF F8 BD */	bl cM3d_Cross_CylLin__FPC8cM3dGCylPC8cM3dGLinP3VecP3Vec
/* 8026D08C  3C 80 80 3A */	lis r4, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026D090  38 04 78 F8 */	addi r0, r4, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026D094  90 01 00 20 */	stw r0, 0x20(r1)
/* 8026D098  39 61 00 40 */	addi r11, r1, 0x40
/* 8026D09C  48 0F 51 8D */	bl _restgpr_29
/* 8026D0A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8026D0A4  7C 08 03 A6 */	mtlr r0
/* 8026D0A8  38 21 00 40 */	addi r1, r1, 0x40
/* 8026D0AC  4E 80 00 20 */	blr 
