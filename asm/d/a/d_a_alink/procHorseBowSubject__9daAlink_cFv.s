lbl_800F21B4:
/* 800F21B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F21B8  7C 08 02 A6 */	mflr r0
/* 800F21BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F21C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F21C4  7C 7F 1B 78 */	mr r31, r3
/* 800F21C8  38 80 00 12 */	li r4, 0x12
/* 800F21CC  4B FC 10 85 */	bl setDoStatus__9daAlink_cFUc
/* 800F21D0  7F E3 FB 78 */	mr r3, r31
/* 800F21D4  4B FF B8 51 */	bl setSyncRidePos__9daAlink_cFv
/* 800F21D8  2C 03 00 00 */	cmpwi r3, 0
/* 800F21DC  40 82 00 0C */	bne lbl_800F21E8
/* 800F21E0  38 60 00 01 */	li r3, 1
/* 800F21E4  48 00 00 54 */	b lbl_800F2238
lbl_800F21E8:
/* 800F21E8  7F E3 FB 78 */	mr r3, r31
/* 800F21EC  4B FF BB 81 */	bl checkHorseSpecialProc__9daAlink_cFv
/* 800F21F0  2C 03 00 00 */	cmpwi r3, 0
/* 800F21F4  41 82 00 0C */	beq lbl_800F2200
/* 800F21F8  38 60 00 01 */	li r3, 1
/* 800F21FC  48 00 00 3C */	b lbl_800F2238
lbl_800F2200:
/* 800F2200  7F E3 FB 78 */	mr r3, r31
/* 800F2204  4B FF CB 95 */	bl setBaseRideAnime__9daAlink_cFv
/* 800F2208  7F E3 FB 78 */	mr r3, r31
/* 800F220C  4B FF D2 45 */	bl checkNextActionHorse__9daAlink_cFv
/* 800F2210  2C 03 00 00 */	cmpwi r3, 0
/* 800F2214  40 82 00 20 */	bne lbl_800F2234
/* 800F2218  7F E3 FB 78 */	mr r3, r31
/* 800F221C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 800F2220  4B FF CD 11 */	bl setRideSubjectAngle__9daAlink_cFs
/* 800F2224  2C 03 00 00 */	cmpwi r3, 0
/* 800F2228  41 82 00 0C */	beq lbl_800F2234
/* 800F222C  7F E3 FB 78 */	mr r3, r31
/* 800F2230  4B FE DA A9 */	bl setBowSight__9daAlink_cFv
lbl_800F2234:
/* 800F2234  38 60 00 01 */	li r3, 1
lbl_800F2238:
/* 800F2238  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F223C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F2240  7C 08 03 A6 */	mtlr r0
/* 800F2244  38 21 00 10 */	addi r1, r1, 0x10
/* 800F2248  4E 80 00 20 */	blr 
