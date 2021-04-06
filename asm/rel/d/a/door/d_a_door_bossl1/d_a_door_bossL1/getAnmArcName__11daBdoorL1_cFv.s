lbl_804E2060:
/* 804E2060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E2064  7C 08 02 A6 */	mflr r0
/* 804E2068  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E206C  48 00 00 59 */	bl getDoorType__11daBdoorL1_cFv
/* 804E2070  2C 03 00 01 */	cmpwi r3, 1
/* 804E2074  41 82 00 24 */	beq lbl_804E2098
/* 804E2078  40 80 00 30 */	bge lbl_804E20A8
/* 804E207C  2C 03 00 00 */	cmpwi r3, 0
/* 804E2080  40 80 00 08 */	bge lbl_804E2088
/* 804E2084  48 00 00 24 */	b lbl_804E20A8
lbl_804E2088:
/* 804E2088  3C 60 80 4E */	lis r3, d_a_door_bossL1__stringBase0@ha /* 0x804E4ADC@ha */
/* 804E208C  38 63 4A DC */	addi r3, r3, d_a_door_bossL1__stringBase0@l /* 0x804E4ADC@l */
/* 804E2090  38 63 02 2C */	addi r3, r3, 0x22c
/* 804E2094  48 00 00 20 */	b lbl_804E20B4
lbl_804E2098:
/* 804E2098  3C 60 80 4E */	lis r3, d_a_door_bossL1__stringBase0@ha /* 0x804E4ADC@ha */
/* 804E209C  38 63 4A DC */	addi r3, r3, d_a_door_bossL1__stringBase0@l /* 0x804E4ADC@l */
/* 804E20A0  38 63 02 36 */	addi r3, r3, 0x236
/* 804E20A4  48 00 00 10 */	b lbl_804E20B4
lbl_804E20A8:
/* 804E20A8  3C 60 80 4E */	lis r3, d_a_door_bossL1__stringBase0@ha /* 0x804E4ADC@ha */
/* 804E20AC  38 63 4A DC */	addi r3, r3, d_a_door_bossL1__stringBase0@l /* 0x804E4ADC@l */
/* 804E20B0  38 63 02 2C */	addi r3, r3, 0x22c
lbl_804E20B4:
/* 804E20B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E20B8  7C 08 03 A6 */	mtlr r0
/* 804E20BC  38 21 00 10 */	addi r1, r1, 0x10
/* 804E20C0  4E 80 00 20 */	blr 
