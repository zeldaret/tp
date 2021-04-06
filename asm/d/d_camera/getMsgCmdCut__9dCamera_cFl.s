lbl_8016E4A4:
/* 8016E4A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8016E4A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8016E4AC  80 03 5E EC */	lwz r0, 0x5eec(r3)
/* 8016E4B0  2C 00 00 01 */	cmpwi r0, 1
/* 8016E4B4  41 80 00 0C */	blt lbl_8016E4C0
/* 8016E4B8  2C 00 00 0A */	cmpwi r0, 0xa
/* 8016E4BC  40 81 00 10 */	ble lbl_8016E4CC
lbl_8016E4C0:
/* 8016E4C0  2C 00 00 00 */	cmpwi r0, 0
/* 8016E4C4  40 81 00 08 */	ble lbl_8016E4CC
/* 8016E4C8  7C 04 03 78 */	mr r4, r0
lbl_8016E4CC:
/* 8016E4CC  80 03 5E E8 */	lwz r0, 0x5ee8(r3)
/* 8016E4D0  2C 00 00 01 */	cmpwi r0, 1
/* 8016E4D4  41 80 00 0C */	blt lbl_8016E4E0
/* 8016E4D8  2C 00 00 0A */	cmpwi r0, 0xa
/* 8016E4DC  40 81 00 10 */	ble lbl_8016E4EC
lbl_8016E4E0:
/* 8016E4E0  2C 00 00 00 */	cmpwi r0, 0
/* 8016E4E4  40 81 00 08 */	ble lbl_8016E4EC
/* 8016E4E8  7C 04 03 78 */	mr r4, r0
lbl_8016E4EC:
/* 8016E4EC  7C 83 23 78 */	mr r3, r4
/* 8016E4F0  4E 80 00 20 */	blr 
