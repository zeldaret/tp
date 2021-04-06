lbl_80118B34:
/* 80118B34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80118B38  7C 08 02 A6 */	mflr r0
/* 80118B3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80118B40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80118B44  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80118B48  7C 7E 1B 78 */	mr r30, r3
/* 80118B4C  7C 9F 23 78 */	mr r31, r4
/* 80118B50  7C A4 2B 78 */	mr r4, r5
/* 80118B54  38 A0 00 01 */	li r5, 1
/* 80118B58  4B FB E6 B1 */	bl damageMagnification__9daAlink_cFii
/* 80118B5C  FC 00 08 1E */	fctiwz f0, f1
/* 80118B60  D8 01 00 08 */	stfd f0, 8(r1)
/* 80118B64  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80118B68  7F FF 01 D6 */	mullw r31, r31, r0
/* 80118B6C  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 80118B70  28 00 01 50 */	cmplwi r0, 0x150
/* 80118B74  41 82 00 64 */	beq lbl_80118BD8
/* 80118B78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80118B7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80118B80  A0 03 00 02 */	lhz r0, 2(r3)
/* 80118B84  7C 1F 00 00 */	cmpw r31, r0
/* 80118B88  41 80 00 50 */	blt lbl_80118BD8
/* 80118B8C  7F C3 F3 78 */	mr r3, r30
/* 80118B90  4B FB EC 39 */	bl checkMagicArmorNoDamage__9daAlink_cFv
/* 80118B94  2C 03 00 00 */	cmpwi r3, 0
/* 80118B98  40 82 00 40 */	bne lbl_80118BD8
/* 80118B9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80118BA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80118BA4  38 63 00 9C */	addi r3, r3, 0x9c
/* 80118BA8  38 80 00 6C */	li r4, 0x6c
/* 80118BAC  4B F1 AB 35 */	bl checkBottle__17dSv_player_item_cFUc
/* 80118BB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80118BB4  40 82 00 24 */	bne lbl_80118BD8
/* 80118BB8  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 80118BBC  64 00 00 04 */	oris r0, r0, 4
/* 80118BC0  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80118BC4  7F C3 F3 78 */	mr r3, r30
/* 80118BC8  38 80 00 00 */	li r4, 0
/* 80118BCC  48 00 32 89 */	bl procCoDeadInit__9daAlink_cFi
/* 80118BD0  38 60 00 01 */	li r3, 1
/* 80118BD4  48 00 00 08 */	b lbl_80118BDC
lbl_80118BD8:
/* 80118BD8  38 60 00 00 */	li r3, 0
lbl_80118BDC:
/* 80118BDC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80118BE0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80118BE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80118BE8  7C 08 03 A6 */	mtlr r0
/* 80118BEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80118BF0  4E 80 00 20 */	blr 
