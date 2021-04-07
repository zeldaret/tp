lbl_80236BF8:
/* 80236BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80236BFC  7C 08 02 A6 */	mflr r0
/* 80236C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80236C04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80236C08  93 C1 00 08 */	stw r30, 8(r1)
/* 80236C0C  7C 9E 23 78 */	mr r30, r4
/* 80236C10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80236C14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80236C18  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 80236C1C  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 80236C20  7D 89 03 A6 */	mtctr r12
/* 80236C24  4E 80 04 21 */	bctrl 
/* 80236C28  8B E3 00 28 */	lbz r31, 0x28(r3)
/* 80236C2C  3C 60 80 43 */	lis r3, arcName@ha /* 0x8043069C@ha */
/* 80236C30  38 63 06 9C */	addi r3, r3, arcName@l /* 0x8043069C@l */
/* 80236C34  3C 80 80 3A */	lis r4, d_msg_d_msg_object__stringBase0@ha /* 0x80399660@ha */
/* 80236C38  38 84 96 60 */	addi r4, r4, d_msg_d_msg_object__stringBase0@l /* 0x80399660@l */
/* 80236C3C  38 84 00 6F */	addi r4, r4, 0x6f
/* 80236C40  7F E5 FB 78 */	mr r5, r31
/* 80236C44  4C C6 31 82 */	crclr 6
/* 80236C48  48 12 F8 95 */	bl sprintf
/* 80236C4C  3C 60 80 43 */	lis r3, arcName@ha /* 0x8043069C@ha */
/* 80236C50  38 63 06 9C */	addi r3, r3, arcName@l /* 0x8043069C@l */
/* 80236C54  38 80 00 00 */	li r4, 0
/* 80236C58  38 A0 00 01 */	li r5, 1
/* 80236C5C  38 C0 00 00 */	li r6, 0
/* 80236C60  4B DD F5 81 */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 80236C64  90 7E 00 00 */	stw r3, 0(r30)
/* 80236C68  2C 1F 00 63 */	cmpwi r31, 0x63
/* 80236C6C  40 82 00 08 */	bne lbl_80236C74
/* 80236C70  3B E0 00 09 */	li r31, 9
lbl_80236C74:
/* 80236C74  B3 ED 8B 48 */	sth r31, s_groupID(r13)
/* 80236C78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80236C7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80236C80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80236C84  7C 08 03 A6 */	mtlr r0
/* 80236C88  38 21 00 10 */	addi r1, r1, 0x10
/* 80236C8C  4E 80 00 20 */	blr 
