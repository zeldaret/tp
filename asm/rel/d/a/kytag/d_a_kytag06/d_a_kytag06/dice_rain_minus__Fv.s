lbl_808579EC:
/* 808579EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808579F0  7C 08 02 A6 */	mflr r0
/* 808579F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 808579F8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 808579FC  38 83 CA 54 */	addi r4, r3, g_env_light@l /* 0x8042CA54@l */
/* 80857A00  3C 60 80 43 */	lis r3, g_Counter@ha /* 0x80430CD8@ha */
/* 80857A04  80 03 0C D8 */	lwz r0, g_Counter@l(r3)  /* 0x80430CD8@l */
/* 80857A08  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80857A0C  40 82 00 34 */	bne lbl_80857A40
/* 80857A10  80 64 0E 80 */	lwz r3, 0xe80(r4)
/* 80857A14  2C 03 00 28 */	cmpwi r3, 0x28
/* 80857A18  40 81 00 10 */	ble lbl_80857A28
/* 80857A1C  38 03 FF FD */	addi r0, r3, -3
/* 80857A20  90 04 0E 80 */	stw r0, 0xe80(r4)
/* 80857A24  48 00 00 14 */	b lbl_80857A38
lbl_80857A28:
/* 80857A28  2C 03 00 00 */	cmpwi r3, 0
/* 80857A2C  41 82 00 0C */	beq lbl_80857A38
/* 80857A30  38 03 FF FF */	addi r0, r3, -1
/* 80857A34  90 04 0E 80 */	stw r0, 0xe80(r4)
lbl_80857A38:
/* 80857A38  80 64 0E 80 */	lwz r3, 0xe80(r4)
/* 80857A3C  4B 80 3C 11 */	bl dKyw_rain_set__Fi
lbl_80857A40:
/* 80857A40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80857A44  7C 08 03 A6 */	mtlr r0
/* 80857A48  38 21 00 10 */	addi r1, r1, 0x10
/* 80857A4C  4E 80 00 20 */	blr 
