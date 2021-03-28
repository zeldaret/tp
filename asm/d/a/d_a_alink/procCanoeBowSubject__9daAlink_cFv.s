lbl_800F6D64:
/* 800F6D64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800F6D68  7C 08 02 A6 */	mflr r0
/* 800F6D6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800F6D70  39 61 00 20 */	addi r11, r1, 0x20
/* 800F6D74  48 26 B4 69 */	bl _savegpr_29
/* 800F6D78  7C 7D 1B 78 */	mr r29, r3
/* 800F6D7C  38 80 00 12 */	li r4, 0x12
/* 800F6D80  4B FB C4 D1 */	bl setDoStatus__9daAlink_cFUc
/* 800F6D84  AB FD 04 E6 */	lha r31, 0x4e6(r29)
/* 800F6D88  AB DD 04 DE */	lha r30, 0x4de(r29)
/* 800F6D8C  7F A3 EB 78 */	mr r3, r29
/* 800F6D90  4B FF DA 49 */	bl canoeCommon__9daAlink_cFv
/* 800F6D94  2C 03 00 00 */	cmpwi r3, 0
/* 800F6D98  41 82 00 0C */	beq lbl_800F6DA4
/* 800F6D9C  38 60 00 01 */	li r3, 1
/* 800F6DA0  48 00 00 38 */	b lbl_800F6DD8
lbl_800F6DA4:
/* 800F6DA4  B3 FD 04 E6 */	sth r31, 0x4e6(r29)
/* 800F6DA8  7F A3 EB 78 */	mr r3, r29
/* 800F6DAC  4B FF DB 79 */	bl checkNextActionCanoe__9daAlink_cFv
/* 800F6DB0  2C 03 00 00 */	cmpwi r3, 0
/* 800F6DB4  40 82 00 20 */	bne lbl_800F6DD4
/* 800F6DB8  7F A3 EB 78 */	mr r3, r29
/* 800F6DBC  7F C4 F3 78 */	mr r4, r30
/* 800F6DC0  4B FF 81 71 */	bl setRideSubjectAngle__9daAlink_cFs
/* 800F6DC4  2C 03 00 00 */	cmpwi r3, 0
/* 800F6DC8  41 82 00 0C */	beq lbl_800F6DD4
/* 800F6DCC  7F A3 EB 78 */	mr r3, r29
/* 800F6DD0  4B FE 8F 09 */	bl setBowSight__9daAlink_cFv
lbl_800F6DD4:
/* 800F6DD4  38 60 00 01 */	li r3, 1
lbl_800F6DD8:
/* 800F6DD8  39 61 00 20 */	addi r11, r1, 0x20
/* 800F6DDC  48 26 B4 4D */	bl _restgpr_29
/* 800F6DE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800F6DE4  7C 08 03 A6 */	mtlr r0
/* 800F6DE8  38 21 00 20 */	addi r1, r1, 0x20
/* 800F6DEC  4E 80 00 20 */	blr 
