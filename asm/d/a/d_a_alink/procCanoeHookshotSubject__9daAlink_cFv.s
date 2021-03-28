lbl_800F7274:
/* 800F7274  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800F7278  7C 08 02 A6 */	mflr r0
/* 800F727C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800F7280  39 61 00 20 */	addi r11, r1, 0x20
/* 800F7284  48 26 AF 59 */	bl _savegpr_29
/* 800F7288  7C 7D 1B 78 */	mr r29, r3
/* 800F728C  48 01 17 8D */	bl checkHookshotWait__9daAlink_cCFv
/* 800F7290  2C 03 00 00 */	cmpwi r3, 0
/* 800F7294  41 82 00 10 */	beq lbl_800F72A4
/* 800F7298  7F A3 EB 78 */	mr r3, r29
/* 800F729C  38 80 00 12 */	li r4, 0x12
/* 800F72A0  4B FB BF B1 */	bl setDoStatus__9daAlink_cFUc
lbl_800F72A4:
/* 800F72A4  AB FD 04 E6 */	lha r31, 0x4e6(r29)
/* 800F72A8  AB DD 04 DE */	lha r30, 0x4de(r29)
/* 800F72AC  7F A3 EB 78 */	mr r3, r29
/* 800F72B0  4B FF D5 29 */	bl canoeCommon__9daAlink_cFv
/* 800F72B4  2C 03 00 00 */	cmpwi r3, 0
/* 800F72B8  41 82 00 0C */	beq lbl_800F72C4
/* 800F72BC  38 60 00 01 */	li r3, 1
/* 800F72C0  48 00 00 44 */	b lbl_800F7304
lbl_800F72C4:
/* 800F72C4  B3 FD 04 E6 */	sth r31, 0x4e6(r29)
/* 800F72C8  7F A3 EB 78 */	mr r3, r29
/* 800F72CC  4B FF D6 59 */	bl checkNextActionCanoe__9daAlink_cFv
/* 800F72D0  2C 03 00 00 */	cmpwi r3, 0
/* 800F72D4  40 82 00 24 */	bne lbl_800F72F8
/* 800F72D8  7F A3 EB 78 */	mr r3, r29
/* 800F72DC  7F C4 F3 78 */	mr r4, r30
/* 800F72E0  4B FF 7C 51 */	bl setRideSubjectAngle__9daAlink_cFs
/* 800F72E4  2C 03 00 00 */	cmpwi r3, 0
/* 800F72E8  41 82 00 18 */	beq lbl_800F7300
/* 800F72EC  7F A3 EB 78 */	mr r3, r29
/* 800F72F0  48 01 1A C5 */	bl setHookshotSight__9daAlink_cFv
/* 800F72F4  48 00 00 0C */	b lbl_800F7300
lbl_800F72F8:
/* 800F72F8  38 00 00 00 */	li r0, 0
/* 800F72FC  98 1D 20 68 */	stb r0, 0x2068(r29)
lbl_800F7300:
/* 800F7300  38 60 00 01 */	li r3, 1
lbl_800F7304:
/* 800F7304  39 61 00 20 */	addi r11, r1, 0x20
/* 800F7308  48 26 AF 21 */	bl _restgpr_29
/* 800F730C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800F7310  7C 08 03 A6 */	mtlr r0
/* 800F7314  38 21 00 20 */	addi r1, r1, 0x20
/* 800F7318  4E 80 00 20 */	blr 
