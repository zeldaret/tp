lbl_80BF3228:
/* 80BF3228  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF322C  7C 08 02 A6 */	mflr r0
/* 80BF3230  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF3234  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF3238  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF323C  41 82 00 1C */	beq lbl_80BF3258
/* 80BF3240  3C A0 80 BF */	lis r5, __vt__8cM3dGLin@ha
/* 80BF3244  38 05 4B 6C */	addi r0, r5, __vt__8cM3dGLin@l
/* 80BF3248  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BF324C  7C 80 07 35 */	extsh. r0, r4
/* 80BF3250  40 81 00 08 */	ble lbl_80BF3258
/* 80BF3254  4B 6D BA E8 */	b __dl__FPv
lbl_80BF3258:
/* 80BF3258  7F E3 FB 78 */	mr r3, r31
/* 80BF325C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF3260  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF3264  7C 08 03 A6 */	mtlr r0
/* 80BF3268  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF326C  4E 80 00 20 */	blr 
