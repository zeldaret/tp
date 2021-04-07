lbl_8016E448:
/* 8016E448  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8016E44C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8016E450  38 83 5E E8 */	addi r4, r3, 0x5ee8
/* 8016E454  38 60 00 00 */	li r3, 0
/* 8016E458  80 A4 00 04 */	lwz r5, 4(r4)
/* 8016E45C  2C 05 00 01 */	cmpwi r5, 1
/* 8016E460  41 80 00 1C */	blt lbl_8016E47C
/* 8016E464  2C 05 00 0A */	cmpwi r5, 0xa
/* 8016E468  41 81 00 14 */	bgt lbl_8016E47C
/* 8016E46C  38 05 FF FF */	addi r0, r5, -1
/* 8016E470  54 00 10 3A */	slwi r0, r0, 2
/* 8016E474  7C 64 02 14 */	add r3, r4, r0
/* 8016E478  80 63 00 08 */	lwz r3, 8(r3)
lbl_8016E47C:
/* 8016E47C  80 A4 00 00 */	lwz r5, 0(r4)
/* 8016E480  2C 05 00 01 */	cmpwi r5, 1
/* 8016E484  4D 80 00 20 */	bltlr 
/* 8016E488  2C 05 00 0A */	cmpwi r5, 0xa
/* 8016E48C  4D 81 00 20 */	bgtlr 
/* 8016E490  38 05 FF FF */	addi r0, r5, -1
/* 8016E494  54 00 10 3A */	slwi r0, r0, 2
/* 8016E498  7C 64 02 14 */	add r3, r4, r0
/* 8016E49C  80 63 00 08 */	lwz r3, 8(r3)
/* 8016E4A0  4E 80 00 20 */	blr 
