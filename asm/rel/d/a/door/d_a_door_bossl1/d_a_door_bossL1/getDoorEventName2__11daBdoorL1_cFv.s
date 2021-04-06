lbl_804E1EE8:
/* 804E1EE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1EEC  7C 08 02 A6 */	mflr r0
/* 804E1EF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1EF4  4B FF FE A5 */	bl getNowLevel__Fv
/* 804E1EF8  28 03 00 09 */	cmplwi r3, 9
/* 804E1EFC  41 81 00 8C */	bgt lbl_804E1F88
/* 804E1F00  3C 80 80 4E */	lis r4, lit_3713@ha /* 0x804E4E90@ha */
/* 804E1F04  38 84 4E 90 */	addi r4, r4, lit_3713@l /* 0x804E4E90@l */
/* 804E1F08  54 60 10 3A */	slwi r0, r3, 2
/* 804E1F0C  7C 04 00 2E */	lwzx r0, r4, r0
/* 804E1F10  7C 09 03 A6 */	mtctr r0
/* 804E1F14  4E 80 04 20 */	bctr 
lbl_804E1F18:
/* 804E1F18  3C 60 80 4E */	lis r3, d_a_door_bossL1__stringBase0@ha /* 0x804E4ADC@ha */
/* 804E1F1C  38 63 4A DC */	addi r3, r3, d_a_door_bossL1__stringBase0@l /* 0x804E4ADC@l */
/* 804E1F20  38 63 01 3E */	addi r3, r3, 0x13e
/* 804E1F24  48 00 00 70 */	b lbl_804E1F94
lbl_804E1F28:
/* 804E1F28  3C 60 80 4E */	lis r3, d_a_door_bossL1__stringBase0@ha /* 0x804E4ADC@ha */
/* 804E1F2C  38 63 4A DC */	addi r3, r3, d_a_door_bossL1__stringBase0@l /* 0x804E4ADC@l */
/* 804E1F30  38 63 01 58 */	addi r3, r3, 0x158
/* 804E1F34  48 00 00 60 */	b lbl_804E1F94
lbl_804E1F38:
/* 804E1F38  3C 60 80 4E */	lis r3, d_a_door_bossL1__stringBase0@ha /* 0x804E4ADC@ha */
/* 804E1F3C  38 63 4A DC */	addi r3, r3, d_a_door_bossL1__stringBase0@l /* 0x804E4ADC@l */
/* 804E1F40  38 63 01 72 */	addi r3, r3, 0x172
/* 804E1F44  48 00 00 50 */	b lbl_804E1F94
lbl_804E1F48:
/* 804E1F48  3C 60 80 4E */	lis r3, d_a_door_bossL1__stringBase0@ha /* 0x804E4ADC@ha */
/* 804E1F4C  38 63 4A DC */	addi r3, r3, d_a_door_bossL1__stringBase0@l /* 0x804E4ADC@l */
/* 804E1F50  38 63 01 8C */	addi r3, r3, 0x18c
/* 804E1F54  48 00 00 40 */	b lbl_804E1F94
lbl_804E1F58:
/* 804E1F58  3C 60 80 4E */	lis r3, d_a_door_bossL1__stringBase0@ha /* 0x804E4ADC@ha */
/* 804E1F5C  38 63 4A DC */	addi r3, r3, d_a_door_bossL1__stringBase0@l /* 0x804E4ADC@l */
/* 804E1F60  38 63 01 A6 */	addi r3, r3, 0x1a6
/* 804E1F64  48 00 00 30 */	b lbl_804E1F94
lbl_804E1F68:
/* 804E1F68  3C 60 80 4E */	lis r3, d_a_door_bossL1__stringBase0@ha /* 0x804E4ADC@ha */
/* 804E1F6C  38 63 4A DC */	addi r3, r3, d_a_door_bossL1__stringBase0@l /* 0x804E4ADC@l */
/* 804E1F70  38 63 01 C0 */	addi r3, r3, 0x1c0
/* 804E1F74  48 00 00 20 */	b lbl_804E1F94
lbl_804E1F78:
/* 804E1F78  3C 60 80 4E */	lis r3, d_a_door_bossL1__stringBase0@ha /* 0x804E4ADC@ha */
/* 804E1F7C  38 63 4A DC */	addi r3, r3, d_a_door_bossL1__stringBase0@l /* 0x804E4ADC@l */
/* 804E1F80  38 63 01 DA */	addi r3, r3, 0x1da
/* 804E1F84  48 00 00 10 */	b lbl_804E1F94
lbl_804E1F88:
/* 804E1F88  3C 60 80 4E */	lis r3, d_a_door_bossL1__stringBase0@ha /* 0x804E4ADC@ha */
/* 804E1F8C  38 63 4A DC */	addi r3, r3, d_a_door_bossL1__stringBase0@l /* 0x804E4ADC@l */
/* 804E1F90  38 63 00 96 */	addi r3, r3, 0x96
lbl_804E1F94:
/* 804E1F94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1F98  7C 08 03 A6 */	mtlr r0
/* 804E1F9C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1FA0  4E 80 00 20 */	blr 
