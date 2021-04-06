lbl_8096ECC0:
/* 8096ECC0  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 8096ECC4  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 8096ECC8  80 85 00 00 */	lwz r4, 0(r5)
/* 8096ECCC  80 05 00 04 */	lwz r0, 4(r5)
/* 8096ECD0  90 83 0F C4 */	stw r4, 0xfc4(r3)
/* 8096ECD4  90 03 0F C8 */	stw r0, 0xfc8(r3)
/* 8096ECD8  80 05 00 08 */	lwz r0, 8(r5)
/* 8096ECDC  90 03 0F CC */	stw r0, 0xfcc(r3)
/* 8096ECE0  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 8096ECE4  2C 00 00 01 */	cmpwi r0, 1
/* 8096ECE8  41 82 00 08 */	beq lbl_8096ECF0
/* 8096ECEC  48 00 00 28 */	b lbl_8096ED14
lbl_8096ECF0:
/* 8096ECF0  3C 80 80 97 */	lis r4, lit_5136@ha /* 0x80973238@ha */
/* 8096ECF4  38 A4 32 38 */	addi r5, r4, lit_5136@l /* 0x80973238@l */
/* 8096ECF8  80 85 00 00 */	lwz r4, 0(r5)
/* 8096ECFC  80 05 00 04 */	lwz r0, 4(r5)
/* 8096ED00  90 83 0F C4 */	stw r4, 0xfc4(r3)
/* 8096ED04  90 03 0F C8 */	stw r0, 0xfc8(r3)
/* 8096ED08  80 05 00 08 */	lwz r0, 8(r5)
/* 8096ED0C  90 03 0F CC */	stw r0, 0xfcc(r3)
/* 8096ED10  48 00 00 24 */	b lbl_8096ED34
lbl_8096ED14:
/* 8096ED14  3C 80 80 97 */	lis r4, lit_5138@ha /* 0x80973244@ha */
/* 8096ED18  38 A4 32 44 */	addi r5, r4, lit_5138@l /* 0x80973244@l */
/* 8096ED1C  80 85 00 00 */	lwz r4, 0(r5)
/* 8096ED20  80 05 00 04 */	lwz r0, 4(r5)
/* 8096ED24  90 83 0F C4 */	stw r4, 0xfc4(r3)
/* 8096ED28  90 03 0F C8 */	stw r0, 0xfc8(r3)
/* 8096ED2C  80 05 00 08 */	lwz r0, 8(r5)
/* 8096ED30  90 03 0F CC */	stw r0, 0xfcc(r3)
lbl_8096ED34:
/* 8096ED34  38 60 00 01 */	li r3, 1
/* 8096ED38  4E 80 00 20 */	blr 
