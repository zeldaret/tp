lbl_80126650:
/* 80126650  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80126654  7C 08 02 A6 */	mflr r0
/* 80126658  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012665C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80126660  7C 7F 1B 78 */	mr r31, r3
/* 80126664  38 7F 00 50 */	addi r3, r31, 0x50
/* 80126668  4B FF F8 AD */	bl create__20daAlink_lockCursor_cFv
/* 8012666C  2C 03 00 00 */	cmpwi r3, 0
/* 80126670  40 82 00 0C */	bne lbl_8012667C
/* 80126674  38 60 00 00 */	li r3, 0
/* 80126678  48 00 00 34 */	b lbl_801266AC
lbl_8012667C:
/* 8012667C  38 62 92 90 */	la r3, l_arcName(r2) /* 80452C90-_SDA2_BASE_ */
/* 80126680  38 80 00 5B */	li r4, 0x5b
/* 80126684  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80126688  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8012668C  3C A5 00 02 */	addis r5, r5, 2
/* 80126690  38 C0 00 80 */	li r6, 0x80
/* 80126694  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80126698  4B F1 5C 55 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8012669C  7C 64 1B 78 */	mr r4, r3
/* 801266A0  7F E3 FB 78 */	mr r3, r31
/* 801266A4  48 03 8C E1 */	bl setSightImage__18daPy_sightPacket_cFP7ResTIMG
/* 801266A8  38 60 00 01 */	li r3, 1
lbl_801266AC:
/* 801266AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801266B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801266B4  7C 08 03 A6 */	mtlr r0
/* 801266B8  38 21 00 10 */	addi r1, r1, 0x10
/* 801266BC  4E 80 00 20 */	blr 
