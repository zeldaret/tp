lbl_809F3230:
/* 809F3230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F3234  7C 08 02 A6 */	mflr r0
/* 809F3238  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F323C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F3240  7C 7F 1B 79 */	or. r31, r3, r3
/* 809F3244  41 82 00 1C */	beq lbl_809F3260
/* 809F3248  3C A0 80 A0 */	lis r5, __vt__8cM3dGCyl@ha /* 0x809F8E8C@ha */
/* 809F324C  38 05 8E 8C */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x809F8E8C@l */
/* 809F3250  90 1F 00 14 */	stw r0, 0x14(r31)
/* 809F3254  7C 80 07 35 */	extsh. r0, r4
/* 809F3258  40 81 00 08 */	ble lbl_809F3260
/* 809F325C  4B 8D BA E1 */	bl __dl__FPv
lbl_809F3260:
/* 809F3260  7F E3 FB 78 */	mr r3, r31
/* 809F3264  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F3268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F326C  7C 08 03 A6 */	mtlr r0
/* 809F3270  38 21 00 10 */	addi r1, r1, 0x10
/* 809F3274  4E 80 00 20 */	blr 
