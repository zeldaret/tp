lbl_804E1FA4:
/* 804E1FA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1FA8  7C 08 02 A6 */	mflr r0
/* 804E1FAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1FB0  4B FF FD E9 */	bl getNowLevel__Fv
/* 804E1FB4  28 03 00 09 */	cmplwi r3, 9
/* 804E1FB8  41 81 00 8C */	bgt lbl_804E2044
/* 804E1FBC  3C 80 80 4E */	lis r4, lit_3726@ha /* 0x804E4EB8@ha */
/* 804E1FC0  38 84 4E B8 */	addi r4, r4, lit_3726@l /* 0x804E4EB8@l */
/* 804E1FC4  54 60 10 3A */	slwi r0, r3, 2
/* 804E1FC8  7C 04 00 2E */	lwzx r0, r4, r0
/* 804E1FCC  7C 09 03 A6 */	mtctr r0
/* 804E1FD0  4E 80 04 20 */	bctr 
lbl_804E1FD4:
/* 804E1FD4  3C 60 80 4E */	lis r3, d_a_door_bossL1__stringBase0@ha /* 0x804E4ADC@ha */
/* 804E1FD8  38 63 4A DC */	addi r3, r3, d_a_door_bossL1__stringBase0@l /* 0x804E4ADC@l */
/* 804E1FDC  38 63 01 F4 */	addi r3, r3, 0x1f4
/* 804E1FE0  48 00 00 70 */	b lbl_804E2050
lbl_804E1FE4:
/* 804E1FE4  3C 60 80 4E */	lis r3, d_a_door_bossL1__stringBase0@ha /* 0x804E4ADC@ha */
/* 804E1FE8  38 63 4A DC */	addi r3, r3, d_a_door_bossL1__stringBase0@l /* 0x804E4ADC@l */
/* 804E1FEC  38 63 01 FC */	addi r3, r3, 0x1fc
/* 804E1FF0  48 00 00 60 */	b lbl_804E2050
lbl_804E1FF4:
/* 804E1FF4  3C 60 80 4E */	lis r3, d_a_door_bossL1__stringBase0@ha /* 0x804E4ADC@ha */
/* 804E1FF8  38 63 4A DC */	addi r3, r3, d_a_door_bossL1__stringBase0@l /* 0x804E4ADC@l */
/* 804E1FFC  38 63 02 04 */	addi r3, r3, 0x204
/* 804E2000  48 00 00 50 */	b lbl_804E2050
lbl_804E2004:
/* 804E2004  3C 60 80 4E */	lis r3, d_a_door_bossL1__stringBase0@ha /* 0x804E4ADC@ha */
/* 804E2008  38 63 4A DC */	addi r3, r3, d_a_door_bossL1__stringBase0@l /* 0x804E4ADC@l */
/* 804E200C  38 63 02 0C */	addi r3, r3, 0x20c
/* 804E2010  48 00 00 40 */	b lbl_804E2050
lbl_804E2014:
/* 804E2014  3C 60 80 4E */	lis r3, d_a_door_bossL1__stringBase0@ha /* 0x804E4ADC@ha */
/* 804E2018  38 63 4A DC */	addi r3, r3, d_a_door_bossL1__stringBase0@l /* 0x804E4ADC@l */
/* 804E201C  38 63 02 14 */	addi r3, r3, 0x214
/* 804E2020  48 00 00 30 */	b lbl_804E2050
lbl_804E2024:
/* 804E2024  3C 60 80 4E */	lis r3, d_a_door_bossL1__stringBase0@ha /* 0x804E4ADC@ha */
/* 804E2028  38 63 4A DC */	addi r3, r3, d_a_door_bossL1__stringBase0@l /* 0x804E4ADC@l */
/* 804E202C  38 63 02 1C */	addi r3, r3, 0x21c
/* 804E2030  48 00 00 20 */	b lbl_804E2050
lbl_804E2034:
/* 804E2034  3C 60 80 4E */	lis r3, d_a_door_bossL1__stringBase0@ha /* 0x804E4ADC@ha */
/* 804E2038  38 63 4A DC */	addi r3, r3, d_a_door_bossL1__stringBase0@l /* 0x804E4ADC@l */
/* 804E203C  38 63 02 24 */	addi r3, r3, 0x224
/* 804E2040  48 00 00 10 */	b lbl_804E2050
lbl_804E2044:
/* 804E2044  3C 60 80 4E */	lis r3, d_a_door_bossL1__stringBase0@ha /* 0x804E4ADC@ha */
/* 804E2048  38 63 4A DC */	addi r3, r3, d_a_door_bossL1__stringBase0@l /* 0x804E4ADC@l */
/* 804E204C  38 63 01 F4 */	addi r3, r3, 0x1f4
lbl_804E2050:
/* 804E2050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E2054  7C 08 03 A6 */	mtlr r0
/* 804E2058  38 21 00 10 */	addi r1, r1, 0x10
/* 804E205C  4E 80 00 20 */	blr 
