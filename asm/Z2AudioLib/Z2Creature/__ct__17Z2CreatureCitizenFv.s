lbl_802C0C10:
/* 802C0C10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C0C14  7C 08 02 A6 */	mflr r0
/* 802C0C18  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C0C1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C0C20  7C 7F 1B 78 */	mr r31, r3
/* 802C0C24  4B FF F7 A5 */	bl __ct__10Z2CreatureFv
/* 802C0C28  38 7F 00 90 */	addi r3, r31, 0x90
/* 802C0C2C  7F E4 FB 78 */	mr r4, r31
/* 802C0C30  48 01 B1 CD */	bl __ct__10JSUPtrLinkFPv
/* 802C0C34  3C 60 80 3D */	lis r3, __vt__17Z2CreatureCitizen@ha /* 0x803CB890@ha */
/* 802C0C38  38 03 B8 90 */	addi r0, r3, __vt__17Z2CreatureCitizen@l /* 0x803CB890@l */
/* 802C0C3C  90 1F 00 00 */	stw r0, 0(r31)
/* 802C0C40  38 00 FF FF */	li r0, -1
/* 802C0C44  98 1F 00 A0 */	stb r0, 0xa0(r31)
/* 802C0C48  98 1F 00 A1 */	stb r0, 0xa1(r31)
/* 802C0C4C  38 00 00 00 */	li r0, 0
/* 802C0C50  98 1F 00 A2 */	stb r0, 0xa2(r31)
/* 802C0C54  7F E3 FB 78 */	mr r3, r31
/* 802C0C58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C0C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C0C60  7C 08 03 A6 */	mtlr r0
/* 802C0C64  38 21 00 10 */	addi r1, r1, 0x10
/* 802C0C68  4E 80 00 20 */	blr 
