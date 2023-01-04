lbl_80357D70:
/* 80357D70  7C 08 02 A6 */	mflr r0
/* 80357D74  90 01 00 04 */	stw r0, 4(r1)
/* 80357D78  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80357D7C  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 80357D80  7C 9B 23 78 */	mr r27, r4
/* 80357D84  88 04 00 00 */	lbz r0, 0(r4)
/* 80357D88  83 A3 01 0C */	lwz r29, 0x10c(r3)
/* 80357D8C  28 00 00 FF */	cmplwi r0, 0xff
/* 80357D90  40 82 00 0C */	bne lbl_80357D9C
/* 80357D94  3B C0 FF FC */	li r30, -4
/* 80357D98  48 00 00 50 */	b lbl_80357DE8
lbl_80357D9C:
/* 80357D9C  3C 60 80 45 */	lis r3, __CARDDiskNone@ha /* 0x8044CDE0@ha */
/* 80357DA0  38 03 CD E0 */	addi r0, r3, __CARDDiskNone@l /* 0x8044CDE0@l */
/* 80357DA4  7C 1D 00 40 */	cmplw r29, r0
/* 80357DA8  41 82 00 34 */	beq lbl_80357DDC
/* 80357DAC  38 7B 00 00 */	addi r3, r27, 0
/* 80357DB0  38 9D 00 00 */	addi r4, r29, 0
/* 80357DB4  38 A0 00 04 */	li r5, 4
/* 80357DB8  48 00 E2 D5 */	bl memcmp
/* 80357DBC  2C 03 00 00 */	cmpwi r3, 0
/* 80357DC0  40 82 00 24 */	bne lbl_80357DE4
/* 80357DC4  38 7B 00 04 */	addi r3, r27, 4
/* 80357DC8  38 9D 00 04 */	addi r4, r29, 4
/* 80357DCC  38 A0 00 02 */	li r5, 2
/* 80357DD0  48 00 E2 BD */	bl memcmp
/* 80357DD4  2C 03 00 00 */	cmpwi r3, 0
/* 80357DD8  40 82 00 0C */	bne lbl_80357DE4
lbl_80357DDC:
/* 80357DDC  3B C0 00 00 */	li r30, 0
/* 80357DE0  48 00 00 08 */	b lbl_80357DE8
lbl_80357DE4:
/* 80357DE4  3B C0 FF F6 */	li r30, -10
lbl_80357DE8:
/* 80357DE8  2C 1E FF F6 */	cmpwi r30, -10
/* 80357DEC  40 82 00 A0 */	bne lbl_80357E8C
/* 80357DF0  88 7B 00 34 */	lbz r3, 0x34(r27)
/* 80357DF4  88 0D 84 F2 */	lbz r0, data_80450A72(r13)
/* 80357DF8  7C 60 00 38 */	and r0, r3, r0
/* 80357DFC  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 80357E00  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80357E04  41 82 00 44 */	beq lbl_80357E48
/* 80357E08  3C 60 80 45 */	lis r3, __CARDDiskNone@ha /* 0x8044CDE0@ha */
/* 80357E0C  3B E3 CD E0 */	addi r31, r3, __CARDDiskNone@l /* 0x8044CDE0@l */
/* 80357E10  38 7B 00 00 */	addi r3, r27, 0
/* 80357E14  38 9F 00 00 */	addi r4, r31, 0
/* 80357E18  38 A0 00 04 */	li r5, 4
/* 80357E1C  48 00 E2 71 */	bl memcmp
/* 80357E20  2C 03 00 00 */	cmpwi r3, 0
/* 80357E24  40 82 00 24 */	bne lbl_80357E48
/* 80357E28  38 7B 00 04 */	addi r3, r27, 4
/* 80357E2C  38 9F 00 04 */	addi r4, r31, 4
/* 80357E30  38 A0 00 02 */	li r5, 2
/* 80357E34  48 00 E2 59 */	bl memcmp
/* 80357E38  2C 03 00 00 */	cmpwi r3, 0
/* 80357E3C  40 82 00 0C */	bne lbl_80357E48
/* 80357E40  38 60 00 00 */	li r3, 0
/* 80357E44  48 00 00 4C */	b lbl_80357E90
lbl_80357E48:
/* 80357E48  57 80 06 73 */	rlwinm. r0, r28, 0, 0x19, 0x19
/* 80357E4C  41 82 00 40 */	beq lbl_80357E8C
/* 80357E50  3C 60 80 45 */	lis r3, __CARDDiskNone@ha /* 0x8044CDE0@ha */
/* 80357E54  38 83 CD E0 */	addi r4, r3, __CARDDiskNone@l /* 0x8044CDE0@l */
/* 80357E58  38 7B 00 00 */	addi r3, r27, 0
/* 80357E5C  38 A0 00 04 */	li r5, 4
/* 80357E60  48 00 E2 2D */	bl memcmp
/* 80357E64  2C 03 00 00 */	cmpwi r3, 0
/* 80357E68  40 82 00 24 */	bne lbl_80357E8C
/* 80357E6C  38 7B 00 04 */	addi r3, r27, 4
/* 80357E70  38 9D 00 04 */	addi r4, r29, 4
/* 80357E74  38 A0 00 02 */	li r5, 2
/* 80357E78  48 00 E2 15 */	bl memcmp
/* 80357E7C  2C 03 00 00 */	cmpwi r3, 0
/* 80357E80  40 82 00 0C */	bne lbl_80357E8C
/* 80357E84  38 60 00 00 */	li r3, 0
/* 80357E88  48 00 00 08 */	b lbl_80357E90
lbl_80357E8C:
/* 80357E8C  7F C3 F3 78 */	mr r3, r30
lbl_80357E90:
/* 80357E90  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 80357E94  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80357E98  38 21 00 28 */	addi r1, r1, 0x28
/* 80357E9C  7C 08 03 A6 */	mtlr r0
/* 80357EA0  4E 80 00 20 */	blr 
