lbl_802E4C54:
/* 802E4C54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E4C58  7C 08 02 A6 */	mflr r0
/* 802E4C5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E4C60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E4C64  7C 7F 1B 78 */	mr r31, r3
/* 802E4C68  80 0D 8F B8 */	lwz r0, sManager__8JUTVideo(r13)
/* 802E4C6C  28 00 00 00 */	cmplwi r0, 0
/* 802E4C70  40 82 00 24 */	bne lbl_802E4C94
/* 802E4C74  38 60 00 58 */	li r3, 0x58
/* 802E4C78  4B FE 9F D5 */	bl __nw__FUl
/* 802E4C7C  7C 60 1B 79 */	or. r0, r3, r3
/* 802E4C80  41 82 00 10 */	beq lbl_802E4C90
/* 802E4C84  7F E4 FB 78 */	mr r4, r31
/* 802E4C88  48 00 00 6D */	bl __ct__8JUTVideoFPC16_GXRenderModeObj
/* 802E4C8C  7C 60 1B 78 */	mr r0, r3
lbl_802E4C90:
/* 802E4C90  90 0D 8F B8 */	stw r0, sManager__8JUTVideo(r13)
lbl_802E4C94:
/* 802E4C94  80 6D 8F B8 */	lwz r3, sManager__8JUTVideo(r13)
/* 802E4C98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E4C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E4CA0  7C 08 03 A6 */	mtlr r0
/* 802E4CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 802E4CA8  4E 80 00 20 */	blr 
