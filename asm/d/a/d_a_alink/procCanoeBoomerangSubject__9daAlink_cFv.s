lbl_800F7010:
/* 800F7010  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800F7014  7C 08 02 A6 */	mflr r0
/* 800F7018  90 01 00 24 */	stw r0, 0x24(r1)
/* 800F701C  39 61 00 20 */	addi r11, r1, 0x20
/* 800F7020  48 26 B1 BD */	bl _savegpr_29
/* 800F7024  7C 7D 1B 78 */	mr r29, r3
/* 800F7028  4B FC 02 BD */	bl checkItemActorPointer__9daAlink_cFv
/* 800F702C  2C 03 00 00 */	cmpwi r3, 0
/* 800F7030  40 82 00 0C */	bne lbl_800F703C
/* 800F7034  38 60 00 01 */	li r3, 1
/* 800F7038  48 00 00 A0 */	b lbl_800F70D8
lbl_800F703C:
/* 800F703C  38 60 00 00 */	li r3, 0
/* 800F7040  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 800F7044  28 00 00 40 */	cmplwi r0, 0x40
/* 800F7048  41 82 00 0C */	beq lbl_800F7054
/* 800F704C  28 00 01 02 */	cmplwi r0, 0x102
/* 800F7050  40 82 00 14 */	bne lbl_800F7064
lbl_800F7054:
/* 800F7054  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800F7058  28 00 00 54 */	cmplwi r0, 0x54
/* 800F705C  40 82 00 08 */	bne lbl_800F7064
/* 800F7060  38 60 00 01 */	li r3, 1
lbl_800F7064:
/* 800F7064  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F7068  41 82 00 10 */	beq lbl_800F7078
/* 800F706C  7F A3 EB 78 */	mr r3, r29
/* 800F7070  38 80 00 12 */	li r4, 0x12
/* 800F7074  4B FB C1 DD */	bl setDoStatus__9daAlink_cFUc
lbl_800F7078:
/* 800F7078  AB FD 04 E6 */	lha r31, 0x4e6(r29)
/* 800F707C  AB DD 04 DE */	lha r30, 0x4de(r29)
/* 800F7080  7F A3 EB 78 */	mr r3, r29
/* 800F7084  4B FF D7 55 */	bl canoeCommon__9daAlink_cFv
/* 800F7088  2C 03 00 00 */	cmpwi r3, 0
/* 800F708C  41 82 00 0C */	beq lbl_800F7098
/* 800F7090  38 60 00 01 */	li r3, 1
/* 800F7094  48 00 00 44 */	b lbl_800F70D8
lbl_800F7098:
/* 800F7098  B3 FD 04 E6 */	sth r31, 0x4e6(r29)
/* 800F709C  7F A3 EB 78 */	mr r3, r29
/* 800F70A0  4B FF D8 85 */	bl checkNextActionCanoe__9daAlink_cFv
/* 800F70A4  2C 03 00 00 */	cmpwi r3, 0
/* 800F70A8  40 82 00 24 */	bne lbl_800F70CC
/* 800F70AC  7F A3 EB 78 */	mr r3, r29
/* 800F70B0  7F C4 F3 78 */	mr r4, r30
/* 800F70B4  4B FF 7E 7D */	bl setRideSubjectAngle__9daAlink_cFs
/* 800F70B8  2C 03 00 00 */	cmpwi r3, 0
/* 800F70BC  41 82 00 18 */	beq lbl_800F70D4
/* 800F70C0  7F A3 EB 78 */	mr r3, r29
/* 800F70C4  4B FE 9D A1 */	bl setBoomerangSight__9daAlink_cFv
/* 800F70C8  48 00 00 0C */	b lbl_800F70D4
lbl_800F70CC:
/* 800F70CC  38 00 00 00 */	li r0, 0
/* 800F70D0  98 1D 20 68 */	stb r0, 0x2068(r29)
lbl_800F70D4:
/* 800F70D4  38 60 00 01 */	li r3, 1
lbl_800F70D8:
/* 800F70D8  39 61 00 20 */	addi r11, r1, 0x20
/* 800F70DC  48 26 B1 4D */	bl _restgpr_29
/* 800F70E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800F70E4  7C 08 03 A6 */	mtlr r0
/* 800F70E8  38 21 00 20 */	addi r1, r1, 0x20
/* 800F70EC  4E 80 00 20 */	blr 
