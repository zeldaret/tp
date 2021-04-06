lbl_804E5CD0:
/* 804E5CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E5CD4  7C 08 02 A6 */	mflr r0
/* 804E5CD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5CDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E5CE0  7C 7F 1B 78 */	mr r31, r3
/* 804E5CE4  4B B3 2F FD */	bl fopAc_IsActor__FPv
/* 804E5CE8  2C 03 00 00 */	cmpwi r3, 0
/* 804E5CEC  41 82 00 48 */	beq lbl_804E5D34
/* 804E5CF0  A8 1F 00 08 */	lha r0, 8(r31)
/* 804E5CF4  2C 00 02 21 */	cmpwi r0, 0x221
/* 804E5CF8  40 82 00 3C */	bne lbl_804E5D34
/* 804E5CFC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804E5D00  28 00 00 00 */	cmplwi r0, 0
/* 804E5D04  41 82 00 30 */	beq lbl_804E5D34
/* 804E5D08  3C 60 80 4F */	lis r3, target_info_count@ha /* 0x804EEF8C@ha */
/* 804E5D0C  38 83 EF 8C */	addi r4, r3, target_info_count@l /* 0x804EEF8C@l */
/* 804E5D10  80 A4 00 00 */	lwz r5, 0(r4)
/* 804E5D14  2C 05 00 0A */	cmpwi r5, 0xa
/* 804E5D18  40 80 00 1C */	bge lbl_804E5D34
/* 804E5D1C  54 A0 10 3A */	slwi r0, r5, 2
/* 804E5D20  3C 60 80 4F */	lis r3, target_info@ha /* 0x804EEF64@ha */
/* 804E5D24  38 63 EF 64 */	addi r3, r3, target_info@l /* 0x804EEF64@l */
/* 804E5D28  7F E3 01 2E */	stwx r31, r3, r0
/* 804E5D2C  38 05 00 01 */	addi r0, r5, 1
/* 804E5D30  90 04 00 00 */	stw r0, 0(r4)
lbl_804E5D34:
/* 804E5D34  38 60 00 00 */	li r3, 0
/* 804E5D38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E5D3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E5D40  7C 08 03 A6 */	mtlr r0
/* 804E5D44  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5D48  4E 80 00 20 */	blr 
