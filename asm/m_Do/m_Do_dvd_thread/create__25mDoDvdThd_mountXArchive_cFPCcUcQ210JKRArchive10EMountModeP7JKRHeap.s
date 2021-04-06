lbl_800161E0:
/* 800161E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800161E4  7C 08 02 A6 */	mflr r0
/* 800161E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800161EC  39 61 00 20 */	addi r11, r1, 0x20
/* 800161F0  48 34 BF E5 */	bl _savegpr_27
/* 800161F4  7C 7B 1B 78 */	mr r27, r3
/* 800161F8  7C 9C 23 78 */	mr r28, r4
/* 800161FC  7C BD 2B 78 */	mr r29, r5
/* 80016200  7C DE 33 78 */	mr r30, r6
/* 80016204  4B FF 8B AD */	bl mDoExt_getCommandHeap__Fv
/* 80016208  7C 64 1B 78 */	mr r4, r3
/* 8001620C  38 60 00 28 */	li r3, 0x28
/* 80016210  38 A0 FF FC */	li r5, -4
/* 80016214  48 2B 8A 85 */	bl __nw__FUlP7JKRHeapi
/* 80016218  7C 7F 1B 79 */	or. r31, r3, r3
/* 8001621C  41 82 00 14 */	beq lbl_80016230
/* 80016220  7F 84 E3 78 */	mr r4, r28
/* 80016224  7F A5 EB 78 */	mr r5, r29
/* 80016228  4B FF FF 41 */	bl __ct__25mDoDvdThd_mountXArchive_cFUcQ210JKRArchive10EMountMode
/* 8001622C  7C 7F 1B 78 */	mr r31, r3
lbl_80016230:
/* 80016230  28 1F 00 00 */	cmplwi r31, 0
/* 80016234  41 82 00 60 */	beq lbl_80016294
/* 80016238  7F 63 DB 78 */	mr r3, r27
/* 8001623C  4B FF F6 A1 */	bl my_DVDConvertPathToEntrynum__FPCc
/* 80016240  90 7F 00 18 */	stw r3, 0x18(r31)
/* 80016244  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 80016248  2C 00 FF FF */	cmpwi r0, -1
/* 8001624C  40 82 00 34 */	bne lbl_80016280
/* 80016250  38 00 00 01 */	li r0, 1
/* 80016254  98 1F 00 0C */	stb r0, 0xc(r31)
/* 80016258  28 1F 00 00 */	cmplwi r31, 0
/* 8001625C  41 82 00 1C */	beq lbl_80016278
/* 80016260  7F E3 FB 78 */	mr r3, r31
/* 80016264  38 80 00 01 */	li r4, 1
/* 80016268  81 9F 00 10 */	lwz r12, 0x10(r31)
/* 8001626C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80016270  7D 89 03 A6 */	mtctr r12
/* 80016274  4E 80 04 21 */	bctrl 
lbl_80016278:
/* 80016278  3B E0 00 00 */	li r31, 0
/* 8001627C  48 00 00 18 */	b lbl_80016294
lbl_80016280:
/* 80016280  93 DF 00 24 */	stw r30, 0x24(r31)
/* 80016284  3C 60 80 3E */	lis r3, l_param__9mDoDvdThd@ha /* 0x803DEC60@ha */
/* 80016288  38 63 EC 60 */	addi r3, r3, l_param__9mDoDvdThd@l /* 0x803DEC60@l */
/* 8001628C  7F E4 FB 78 */	mr r4, r31
/* 80016290  4B FF F7 55 */	bl addition__17mDoDvdThd_param_cFP19mDoDvdThd_command_c
lbl_80016294:
/* 80016294  7F E3 FB 78 */	mr r3, r31
/* 80016298  39 61 00 20 */	addi r11, r1, 0x20
/* 8001629C  48 34 BF 85 */	bl _restgpr_27
/* 800162A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800162A4  7C 08 03 A6 */	mtlr r0
/* 800162A8  38 21 00 20 */	addi r1, r1, 0x20
/* 800162AC  4E 80 00 20 */	blr 
