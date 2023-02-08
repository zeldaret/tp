lbl_80A44FD4:
/* 80A44FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A44FD8  7C 08 02 A6 */	mflr r0
/* 80A44FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A44FE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A44FE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80A44FE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A44FEC  7C 9E 23 78 */	mr r30, r4
/* 80A44FF0  41 82 00 C4 */	beq lbl_80A450B4
/* 80A44FF4  3C 60 80 A4 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80A457AC@ha */
/* 80A44FF8  38 03 57 AC */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80A457AC@l */
/* 80A44FFC  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80A45000  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80A45004  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha /* 0x80A44B54@ha */
/* 80A45008  38 84 4B 54 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A44B54@l */
/* 80A4500C  38 A0 00 0C */	li r5, 0xc
/* 80A45010  38 C0 00 03 */	li r6, 3
/* 80A45014  4B 91 CC D5 */	bl __destroy_arr
/* 80A45018  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80A4501C  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha /* 0x80A44B54@ha */
/* 80A45020  38 84 4B 54 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A44B54@l */
/* 80A45024  38 A0 00 0C */	li r5, 0xc
/* 80A45028  38 C0 00 03 */	li r6, 3
/* 80A4502C  4B 91 CC BD */	bl __destroy_arr
/* 80A45030  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80A45034  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha /* 0x80A44B54@ha */
/* 80A45038  38 84 4B 54 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A44B54@l */
/* 80A4503C  38 A0 00 0C */	li r5, 0xc
/* 80A45040  38 C0 00 03 */	li r6, 3
/* 80A45044  4B 91 CC A5 */	bl __destroy_arr
/* 80A45048  38 7F 00 78 */	addi r3, r31, 0x78
/* 80A4504C  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha /* 0x80A44B54@ha */
/* 80A45050  38 84 4B 54 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A44B54@l */
/* 80A45054  38 A0 00 0C */	li r5, 0xc
/* 80A45058  38 C0 00 03 */	li r6, 3
/* 80A4505C  4B 91 CC 8D */	bl __destroy_arr
/* 80A45060  38 7F 00 54 */	addi r3, r31, 0x54
/* 80A45064  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha /* 0x80A44B54@ha */
/* 80A45068  38 84 4B 54 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A44B54@l */
/* 80A4506C  38 A0 00 0C */	li r5, 0xc
/* 80A45070  38 C0 00 03 */	li r6, 3
/* 80A45074  4B 91 CC 75 */	bl __destroy_arr
/* 80A45078  38 7F 00 30 */	addi r3, r31, 0x30
/* 80A4507C  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha /* 0x80A44B54@ha */
/* 80A45080  38 84 4B 54 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A44B54@l */
/* 80A45084  38 A0 00 0C */	li r5, 0xc
/* 80A45088  38 C0 00 03 */	li r6, 3
/* 80A4508C  4B 91 CC 5D */	bl __destroy_arr
/* 80A45090  28 1F 00 00 */	cmplwi r31, 0
/* 80A45094  41 82 00 10 */	beq lbl_80A450A4
/* 80A45098  3C 60 80 A4 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A457A0@ha */
/* 80A4509C  38 03 57 A0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A457A0@l */
/* 80A450A0  90 1F 00 04 */	stw r0, 4(r31)
lbl_80A450A4:
/* 80A450A4  7F C0 07 35 */	extsh. r0, r30
/* 80A450A8  40 81 00 0C */	ble lbl_80A450B4
/* 80A450AC  7F E3 FB 78 */	mr r3, r31
/* 80A450B0  4B 88 9C 8D */	bl __dl__FPv
lbl_80A450B4:
/* 80A450B4  7F E3 FB 78 */	mr r3, r31
/* 80A450B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A450BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A450C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A450C4  7C 08 03 A6 */	mtlr r0
/* 80A450C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A450CC  4E 80 00 20 */	blr 
