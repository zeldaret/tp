lbl_802A3A24:
/* 802A3A24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A3A28  7C 08 02 A6 */	mflr r0
/* 802A3A2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A3A30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A3A34  93 C1 00 08 */	stw r30, 8(r1)
/* 802A3A38  54 80 10 3A */	slwi r0, r4, 2
/* 802A3A3C  7F C3 02 14 */	add r30, r3, r0
/* 802A3A40  83 FE 02 A0 */	lwz r31, 0x2a0(r30)
/* 802A3A44  28 1F 00 00 */	cmplwi r31, 0
/* 802A3A48  41 82 00 5C */	beq lbl_802A3AA4
/* 802A3A4C  88 0D 8D 98 */	lbz r0, data_80451318(r13)
/* 802A3A50  7C 00 07 75 */	extsb. r0, r0
/* 802A3A54  40 82 00 34 */	bne lbl_802A3A88
/* 802A3A58  3C 60 80 43 */	lis r3, data_804340B0@ha /* 0x804340B0@ha */
/* 802A3A5C  38 63 40 B0 */	addi r3, r3, data_804340B0@l /* 0x804340B0@l */
/* 802A3A60  4B FE CD E9 */	bl __ct__17JASGenericMemPoolFv
/* 802A3A64  3C 60 80 43 */	lis r3, data_804340B0@ha /* 0x804340B0@ha */
/* 802A3A68  38 63 40 B0 */	addi r3, r3, data_804340B0@l /* 0x804340B0@l */
/* 802A3A6C  3C 80 80 2A */	lis r4, func_802A1268@ha /* 0x802A1268@ha */
/* 802A3A70  38 84 12 68 */	addi r4, r4, func_802A1268@l /* 0x802A1268@l */
/* 802A3A74  3C A0 80 43 */	lis r5, lit_881@ha /* 0x804340E0@ha */
/* 802A3A78  38 A5 40 E0 */	addi r5, r5, lit_881@l /* 0x804340E0@l */
/* 802A3A7C  48 0B E1 A9 */	bl __register_global_object
/* 802A3A80  38 00 00 01 */	li r0, 1
/* 802A3A84  98 0D 8D 98 */	stb r0, data_80451318(r13)
lbl_802A3A88:
/* 802A3A88  3C 60 80 43 */	lis r3, data_804340B0@ha /* 0x804340B0@ha */
/* 802A3A8C  38 63 40 B0 */	addi r3, r3, data_804340B0@l /* 0x804340B0@l */
/* 802A3A90  7F E4 FB 78 */	mr r4, r31
/* 802A3A94  38 A0 00 64 */	li r5, 0x64
/* 802A3A98  4B FE CE FD */	bl free__17JASGenericMemPoolFPvUl
/* 802A3A9C  38 00 00 00 */	li r0, 0
/* 802A3AA0  90 1E 02 A0 */	stw r0, 0x2a0(r30)
lbl_802A3AA4:
/* 802A3AA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A3AA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A3AAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A3AB0  7C 08 03 A6 */	mtlr r0
/* 802A3AB4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A3AB8  4E 80 00 20 */	blr 
