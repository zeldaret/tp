.include "macros.inc"

.section .text, "ax" # 80037c7c


.global e_wb_class_NS_checkWait
e_wb_class_NS_checkWait:
/* 80037C7C 00034BBC  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 80037C80 00034BC0  20 00 00 2A */	subfic r0, r0, 0x2a
/* 80037C84 00034BC4  7C 00 00 34 */	cntlzw r0, r0
/* 80037C88 00034BC8  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80037C8C 00034BCC  4E 80 00 20 */	blr 

.global e_wb_class_NS_setPlayerRideNow
e_wb_class_NS_setPlayerRideNow:
/* 80037C90 00034BD0  38 00 00 67 */	li r0, 0x67
/* 80037C94 00034BD4  B0 03 06 90 */	sth r0, 0x690(r3)
/* 80037C98 00034BD8  38 00 00 00 */	li r0, 0
/* 80037C9C 00034BDC  B0 03 05 B4 */	sth r0, 0x5b4(r3)
/* 80037CA0 00034BE0  A0 03 06 BE */	lhz r0, 0x6be(r3)
/* 80037CA4 00034BE4  60 00 00 03 */	ori r0, r0, 3
/* 80037CA8 00034BE8  B0 03 06 BE */	sth r0, 0x6be(r3)
/* 80037CAC 00034BEC  4E 80 00 20 */	blr 

.global e_wb_class_NS_setPlayerRide
e_wb_class_NS_setPlayerRide:
/* 80037CB0 00034BF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80037CB4 00034BF4  7C 08 02 A6 */	mflr r0
/* 80037CB8 00034BF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80037CBC 00034BFC  38 00 00 65 */	li r0, 0x65
/* 80037CC0 00034C00  B0 03 06 90 */	sth r0, 0x690(r3)
/* 80037CC4 00034C04  38 00 00 00 */	li r0, 0
/* 80037CC8 00034C08  B0 03 05 B4 */	sth r0, 0x5b4(r3)
/* 80037CCC 00034C0C  A0 03 06 BE */	lhz r0, 0x6be(r3)
/* 80037CD0 00034C10  60 00 00 03 */	ori r0, r0, 3
/* 80037CD4 00034C14  B0 03 06 BE */	sth r0, 0x6be(r3)
/* 80037CD8 00034C18  38 80 00 01 */	li r4, 1
/* 80037CDC 00034C1C  38 63 05 EC */	addi r3, r3, 0x5ec
/* 80037CE0 00034C20  48 28 D5 4D */	bl Z2CreatureRide_NS_setLinkRiding
/* 80037CE4 00034C24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80037CE8 00034C28  7C 08 03 A6 */	mtlr r0
/* 80037CEC 00034C2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80037CF0 00034C30  4E 80 00 20 */	blr 

.global e_wb_class_NS_getOff
e_wb_class_NS_getOff:
/* 80037CF4 00034C34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80037CF8 00034C38  7C 08 02 A6 */	mflr r0
/* 80037CFC 00034C3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80037D00 00034C40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80037D04 00034C44  7C 7F 1B 78 */	mr r31, r3
/* 80037D08 00034C48  48 00 00 61 */	bl e_wb_class_NS_checkDownDamage
/* 80037D0C 00034C4C  2C 03 00 00 */	cmpwi r3, 0
/* 80037D10 00034C50  41 82 00 10 */	beq lbl_80037D20
/* 80037D14 00034C54  A8 1F 06 90 */	lha r0, 0x690(r31)
/* 80037D18 00034C58  2C 00 00 67 */	cmpwi r0, 0x67
/* 80037D1C 00034C5C  40 82 00 10 */	bne lbl_80037D2C
lbl_80037D20:
/* 80037D20 00034C60  38 00 00 00 */	li r0, 0
/* 80037D24 00034C64  B0 1F 06 90 */	sth r0, 0x690(r31)
/* 80037D28 00034C68  48 00 00 0C */	b lbl_80037D34
lbl_80037D2C:
/* 80037D2C 00034C6C  38 00 00 00 */	li r0, 0
/* 80037D30 00034C70  B0 1F 06 92 */	sth r0, 0x692(r31)
lbl_80037D34:
/* 80037D34 00034C74  38 00 00 00 */	li r0, 0
/* 80037D38 00034C78  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 80037D3C 00034C7C  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 80037D40 00034C80  54 00 04 3A */	rlwinm r0, r0, 0, 0x10, 0x1d
/* 80037D44 00034C84  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 80037D48 00034C88  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 80037D4C 00034C8C  38 80 00 00 */	li r4, 0
/* 80037D50 00034C90  48 28 D4 DD */	bl Z2CreatureRide_NS_setLinkRiding
/* 80037D54 00034C94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80037D58 00034C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80037D5C 00034C9C  7C 08 03 A6 */	mtlr r0
/* 80037D60 00034CA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80037D64 00034CA4  4E 80 00 20 */	blr 

.global e_wb_class_NS_checkDownDamage
e_wb_class_NS_checkDownDamage:
/* 80037D68 00034CA8  38 00 00 00 */	li r0, 0
/* 80037D6C 00034CAC  A8 63 06 90 */	lha r3, 0x690(r3)
/* 80037D70 00034CB0  2C 03 00 65 */	cmpwi r3, 0x65
/* 80037D74 00034CB4  41 82 00 18 */	beq lbl_80037D8C
/* 80037D78 00034CB8  2C 03 00 66 */	cmpwi r3, 0x66
/* 80037D7C 00034CBC  41 82 00 10 */	beq lbl_80037D8C
/* 80037D80 00034CC0  2C 03 00 15 */	cmpwi r3, 0x15
/* 80037D84 00034CC4  41 82 00 08 */	beq lbl_80037D8C
/* 80037D88 00034CC8  38 00 00 01 */	li r0, 1
lbl_80037D8C:
/* 80037D8C 00034CCC  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80037D90 00034CD0  4E 80 00 20 */	blr 

.global e_wb_class_NS_checkNormalRideMode
e_wb_class_NS_checkNormalRideMode:
/* 80037D94 00034CD4  38 80 00 00 */	li r4, 0
/* 80037D98 00034CD8  A8 03 06 90 */	lha r0, 0x690(r3)
/* 80037D9C 00034CDC  2C 00 00 66 */	cmpwi r0, 0x66
/* 80037DA0 00034CE0  40 82 00 10 */	bne lbl_80037DB0
/* 80037DA4 00034CE4  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 80037DA8 00034CE8  2C 00 00 01 */	cmpwi r0, 1
/* 80037DAC 00034CEC  40 80 00 08 */	bge lbl_80037DB4
lbl_80037DB0:
/* 80037DB0 00034CF0  38 80 00 01 */	li r4, 1
lbl_80037DB4:
/* 80037DB4 00034CF4  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 80037DB8 00034CF8  4E 80 00 20 */	blr 

.global e_wb_class_NS_setRunRideMode
e_wb_class_NS_setRunRideMode:
/* 80037DBC 00034CFC  A8 03 06 90 */	lha r0, 0x690(r3)
/* 80037DC0 00034D00  2C 00 00 65 */	cmpwi r0, 0x65
/* 80037DC4 00034D04  4C 82 00 20 */	bnelr 
/* 80037DC8 00034D08  38 00 00 00 */	li r0, 0
/* 80037DCC 00034D0C  B0 03 05 B4 */	sth r0, 0x5b4(r3)
/* 80037DD0 00034D10  38 00 00 15 */	li r0, 0x15
/* 80037DD4 00034D14  B0 03 06 90 */	sth r0, 0x690(r3)
/* 80037DD8 00034D18  38 00 00 65 */	li r0, 0x65
/* 80037DDC 00034D1C  B0 03 06 92 */	sth r0, 0x692(r3)
/* 80037DE0 00034D20  4E 80 00 20 */	blr 
