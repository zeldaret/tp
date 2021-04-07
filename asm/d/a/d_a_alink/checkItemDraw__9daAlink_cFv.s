lbl_800CB5F8:
/* 800CB5F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CB5FC  7C 08 02 A6 */	mflr r0
/* 800CB600  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CB604  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800CB608  7C 7F 1B 78 */	mr r31, r3
/* 800CB60C  80 03 07 08 */	lwz r0, 0x708(r3)
/* 800CB610  28 00 00 00 */	cmplwi r0, 0
/* 800CB614  41 82 00 68 */	beq lbl_800CB67C
/* 800CB618  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800CB61C  28 00 00 42 */	cmplwi r0, 0x42
/* 800CB620  40 82 00 10 */	bne lbl_800CB630
/* 800CB624  48 00 58 75 */	bl checkSwordEquipAnime__9daAlink_cCFv
/* 800CB628  2C 03 00 00 */	cmpwi r3, 0
/* 800CB62C  40 82 00 50 */	bne lbl_800CB67C
lbl_800CB630:
/* 800CB630  7F E3 FB 78 */	mr r3, r31
/* 800CB634  A0 9F 2F DC */	lhz r4, 0x2fdc(r31)
/* 800CB638  48 01 31 49 */	bl checkBowAndSlingItem__9daAlink_cFi
/* 800CB63C  2C 03 00 00 */	cmpwi r3, 0
/* 800CB640  41 82 00 34 */	beq lbl_800CB674
/* 800CB644  7F E3 FB 78 */	mr r3, r31
/* 800CB648  48 01 45 81 */	bl checkBowGrabLeftHand__9daAlink_cCFv
/* 800CB64C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CB650  40 82 00 24 */	bne lbl_800CB674
/* 800CB654  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800CB658  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800CB65C  88 03 00 15 */	lbz r0, 0x15(r3)
/* 800CB660  28 00 00 FF */	cmplwi r0, 0xff
/* 800CB664  41 82 00 10 */	beq lbl_800CB674
/* 800CB668  80 1F 2E 50 */	lwz r0, 0x2e50(r31)
/* 800CB66C  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 800CB670  41 82 00 0C */	beq lbl_800CB67C
lbl_800CB674:
/* 800CB674  38 60 00 01 */	li r3, 1
/* 800CB678  48 00 00 08 */	b lbl_800CB680
lbl_800CB67C:
/* 800CB67C  38 60 00 00 */	li r3, 0
lbl_800CB680:
/* 800CB680  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800CB684  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CB688  7C 08 03 A6 */	mtlr r0
/* 800CB68C  38 21 00 10 */	addi r1, r1, 0x10
/* 800CB690  4E 80 00 20 */	blr 
