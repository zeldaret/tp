lbl_80694BBC:
/* 80694BBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80694BC0  7C 08 02 A6 */	mflr r0
/* 80694BC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80694BC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80694BCC  4B CC D6 0D */	bl _savegpr_28
/* 80694BD0  7C 7C 1B 78 */	mr r28, r3
/* 80694BD4  3B DC 05 88 */	addi r30, r28, 0x588
/* 80694BD8  3B A0 00 00 */	li r29, 0
/* 80694BDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80694BE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80694BE4  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80694BE8  48 00 00 B8 */	b lbl_80694CA0
lbl_80694BEC:
/* 80694BEC  88 1E 00 50 */	lbz r0, 0x50(r30)
/* 80694BF0  7C 00 07 74 */	extsb r0, r0
/* 80694BF4  2C 00 00 04 */	cmpwi r0, 4
/* 80694BF8  40 82 00 50 */	bne lbl_80694C48
/* 80694BFC  80 1E 00 08 */	lwz r0, 8(r30)
/* 80694C00  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80694C04  41 82 00 24 */	beq lbl_80694C28
/* 80694C08  7F E3 FB 78 */	mr r3, r31
/* 80694C0C  80 9E 00 00 */	lwz r4, 0(r30)
/* 80694C10  3C A0 80 69 */	lis r5, struct_80697E8C+0x0@ha /* 0x80697E8C@ha */
/* 80694C14  38 A5 7E 8C */	addi r5, r5, struct_80697E8C+0x0@l /* 0x80697E8C@l */
/* 80694C18  88 A5 00 00 */	lbz r5, 0(r5)
/* 80694C1C  7C A5 07 74 */	extsb r5, r5
/* 80694C20  4B 99 7F 49 */	bl entrySimpleModel__14dComIfG_play_cFP8J3DModeli
/* 80694C24  48 00 00 74 */	b lbl_80694C98
lbl_80694C28:
/* 80694C28  7F E3 FB 78 */	mr r3, r31
/* 80694C2C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80694C30  3C A0 80 69 */	lis r5, struct_80697E8C+0x0@ha /* 0x80697E8C@ha */
/* 80694C34  38 A5 7E 8C */	addi r5, r5, struct_80697E8C+0x0@l /* 0x80697E8C@l */
/* 80694C38  88 A5 00 00 */	lbz r5, 0(r5)
/* 80694C3C  7C A5 07 74 */	extsb r5, r5
/* 80694C40  4B 99 7F 29 */	bl entrySimpleModel__14dComIfG_play_cFP8J3DModeli
/* 80694C44  48 00 00 54 */	b lbl_80694C98
lbl_80694C48:
/* 80694C48  2C 00 00 01 */	cmpwi r0, 1
/* 80694C4C  41 80 00 4C */	blt lbl_80694C98
/* 80694C50  88 1E 00 52 */	lbz r0, 0x52(r30)
/* 80694C54  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80694C58  41 82 00 24 */	beq lbl_80694C7C
/* 80694C5C  7F E3 FB 78 */	mr r3, r31
/* 80694C60  80 9E 00 00 */	lwz r4, 0(r30)
/* 80694C64  3C A0 80 69 */	lis r5, struct_80697E8C+0x0@ha /* 0x80697E8C@ha */
/* 80694C68  38 A5 7E 8C */	addi r5, r5, struct_80697E8C+0x0@l /* 0x80697E8C@l */
/* 80694C6C  88 A5 00 00 */	lbz r5, 0(r5)
/* 80694C70  7C A5 07 74 */	extsb r5, r5
/* 80694C74  4B 99 7E F5 */	bl entrySimpleModel__14dComIfG_play_cFP8J3DModeli
/* 80694C78  48 00 00 20 */	b lbl_80694C98
lbl_80694C7C:
/* 80694C7C  7F E3 FB 78 */	mr r3, r31
/* 80694C80  80 9E 00 04 */	lwz r4, 4(r30)
/* 80694C84  3C A0 80 69 */	lis r5, struct_80697E8C+0x0@ha /* 0x80697E8C@ha */
/* 80694C88  38 A5 7E 8C */	addi r5, r5, struct_80697E8C+0x0@l /* 0x80697E8C@l */
/* 80694C8C  88 A5 00 00 */	lbz r5, 0(r5)
/* 80694C90  7C A5 07 74 */	extsb r5, r5
/* 80694C94  4B 99 7E D5 */	bl entrySimpleModel__14dComIfG_play_cFP8J3DModeli
lbl_80694C98:
/* 80694C98  3B BD 00 01 */	addi r29, r29, 1
/* 80694C9C  3B DE 00 78 */	addi r30, r30, 0x78
lbl_80694CA0:
/* 80694CA0  80 1C 7D 88 */	lwz r0, 0x7d88(r28)
/* 80694CA4  7C 1D 00 00 */	cmpw r29, r0
/* 80694CA8  41 80 FF 44 */	blt lbl_80694BEC
/* 80694CAC  38 60 00 01 */	li r3, 1
/* 80694CB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80694CB4  4B CC D5 71 */	bl _restgpr_28
/* 80694CB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80694CBC  7C 08 03 A6 */	mtlr r0
/* 80694CC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80694CC4  4E 80 00 20 */	blr 
