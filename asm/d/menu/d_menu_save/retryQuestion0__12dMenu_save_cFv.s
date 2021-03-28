lbl_801F2F4C:
/* 801F2F4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F2F50  7C 08 02 A6 */	mflr r0
/* 801F2F54  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F2F58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F2F5C  7C 7F 1B 78 */	mr r31, r3
/* 801F2F60  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F2F64  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 801F2F68  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000013@ha */
/* 801F2F6C  38 84 00 13 */	addi r4, r4, 0x0013 /* 0x01000013@l */
/* 801F2F70  48 0C 0F 3D */	bl checkBgmIDPlaying__8Z2SeqMgrFUl
/* 801F2F74  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F2F78  28 00 00 01 */	cmplwi r0, 1
/* 801F2F7C  41 82 00 24 */	beq lbl_801F2FA0
/* 801F2F80  38 00 00 01 */	li r0, 1
/* 801F2F84  98 1F 01 B6 */	stb r0, 0x1b6(r31)
/* 801F2F88  7F E3 FB 78 */	mr r3, r31
/* 801F2F8C  38 80 04 BC */	li r4, 0x4bc
/* 801F2F90  38 A0 00 00 */	li r5, 0
/* 801F2F94  48 00 05 29 */	bl msgTxtSet__12dMenu_save_cFUsb
/* 801F2F98  38 00 00 2C */	li r0, 0x2c
/* 801F2F9C  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F2FA0:
/* 801F2FA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F2FA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F2FA8  7C 08 03 A6 */	mtlr r0
/* 801F2FAC  38 21 00 10 */	addi r1, r1, 0x10
/* 801F2FB0  4E 80 00 20 */	blr 
