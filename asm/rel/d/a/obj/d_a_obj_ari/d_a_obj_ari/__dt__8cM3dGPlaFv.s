lbl_80BA3228:
/* 80BA3228  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA322C  7C 08 02 A6 */	mflr r0
/* 80BA3230  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA3234  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA3238  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA323C  41 82 00 1C */	beq lbl_80BA3258
/* 80BA3240  3C A0 80 BA */	lis r5, __vt__8cM3dGPla@ha /* 0x80BA55B4@ha */
/* 80BA3244  38 05 55 B4 */	addi r0, r5, __vt__8cM3dGPla@l /* 0x80BA55B4@l */
/* 80BA3248  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BA324C  7C 80 07 35 */	extsh. r0, r4
/* 80BA3250  40 81 00 08 */	ble lbl_80BA3258
/* 80BA3254  4B 72 BA E9 */	bl __dl__FPv
lbl_80BA3258:
/* 80BA3258  7F E3 FB 78 */	mr r3, r31
/* 80BA325C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA3260  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA3264  7C 08 03 A6 */	mtlr r0
/* 80BA3268  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA326C  4E 80 00 20 */	blr 
