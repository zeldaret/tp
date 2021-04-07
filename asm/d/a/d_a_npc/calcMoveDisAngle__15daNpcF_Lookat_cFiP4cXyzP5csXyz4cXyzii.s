lbl_80151B68:
/* 80151B68  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80151B6C  7C 08 02 A6 */	mflr r0
/* 80151B70  90 01 00 94 */	stw r0, 0x94(r1)
/* 80151B74  39 61 00 90 */	addi r11, r1, 0x90
/* 80151B78  48 21 06 51 */	bl _savegpr_24
/* 80151B7C  7C 79 1B 78 */	mr r25, r3
/* 80151B80  7C 9A 23 78 */	mr r26, r4
/* 80151B84  7C B8 2B 78 */	mr r24, r5
/* 80151B88  7C DB 33 78 */	mr r27, r6
/* 80151B8C  7D 1C 43 79 */	or. r28, r8, r8
/* 80151B90  40 82 00 10 */	bne lbl_80151BA0
/* 80151B94  38 00 00 00 */	li r0, 0
/* 80151B98  7C 79 D2 14 */	add r3, r25, r26
/* 80151B9C  98 03 00 94 */	stb r0, 0x94(r3)
lbl_80151BA0:
/* 80151BA0  7F D9 D2 14 */	add r30, r25, r26
/* 80151BA4  88 1E 00 94 */	lbz r0, 0x94(r30)
/* 80151BA8  28 00 00 00 */	cmplwi r0, 0
/* 80151BAC  40 82 03 18 */	bne lbl_80151EC4
/* 80151BB0  38 61 00 4C */	addi r3, r1, 0x4c
/* 80151BB4  7C E4 3B 78 */	mr r4, r7
/* 80151BB8  1C 1A 00 0C */	mulli r0, r26, 0xc
/* 80151BBC  7F B8 02 14 */	add r29, r24, r0
/* 80151BC0  7F A5 EB 78 */	mr r5, r29
/* 80151BC4  48 11 4F 71 */	bl __mi__4cXyzCFRC3Vec
/* 80151BC8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80151BCC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80151BD0  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80151BD4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80151BD8  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80151BDC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80151BE0  38 61 00 64 */	addi r3, r1, 0x64
/* 80151BE4  48 11 54 C9 */	bl isZero__4cXyzCFv
/* 80151BE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80151BEC  40 82 02 D8 */	bne lbl_80151EC4
/* 80151BF0  38 61 00 40 */	addi r3, r1, 0x40
/* 80151BF4  38 81 00 64 */	addi r4, r1, 0x64
/* 80151BF8  48 11 52 FD */	bl normalize__4cXyzFv
/* 80151BFC  38 61 00 34 */	addi r3, r1, 0x34
/* 80151C00  38 98 00 24 */	addi r4, r24, 0x24
/* 80151C04  7F A5 EB 78 */	mr r5, r29
/* 80151C08  48 11 4F 2D */	bl __mi__4cXyzCFRC3Vec
/* 80151C0C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80151C10  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80151C14  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80151C18  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80151C1C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80151C20  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80151C24  38 61 00 58 */	addi r3, r1, 0x58
/* 80151C28  48 11 54 85 */	bl isZero__4cXyzCFv
/* 80151C2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80151C30  40 82 02 94 */	bne lbl_80151EC4
/* 80151C34  38 61 00 28 */	addi r3, r1, 0x28
/* 80151C38  38 81 00 58 */	addi r4, r1, 0x58
/* 80151C3C  48 11 52 B9 */	bl normalize__4cXyzFv
/* 80151C40  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80151C44  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80151C48  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80151C4C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80151C50  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80151C54  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80151C58  38 61 00 1C */	addi r3, r1, 0x1c
/* 80151C5C  48 1F 54 DD */	bl PSVECSquareMag
/* 80151C60  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80151C64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80151C68  40 81 00 58 */	ble lbl_80151CC0
/* 80151C6C  FC 00 08 34 */	frsqrte f0, f1
/* 80151C70  C8 82 9A 08 */	lfd f4, lit_4723(r2)
/* 80151C74  FC 44 00 32 */	fmul f2, f4, f0
/* 80151C78  C8 62 9A 10 */	lfd f3, lit_4724(r2)
/* 80151C7C  FC 00 00 32 */	fmul f0, f0, f0
/* 80151C80  FC 01 00 32 */	fmul f0, f1, f0
/* 80151C84  FC 03 00 28 */	fsub f0, f3, f0
/* 80151C88  FC 02 00 32 */	fmul f0, f2, f0
/* 80151C8C  FC 44 00 32 */	fmul f2, f4, f0
/* 80151C90  FC 00 00 32 */	fmul f0, f0, f0
/* 80151C94  FC 01 00 32 */	fmul f0, f1, f0
/* 80151C98  FC 03 00 28 */	fsub f0, f3, f0
/* 80151C9C  FC 02 00 32 */	fmul f0, f2, f0
/* 80151CA0  FC 44 00 32 */	fmul f2, f4, f0
/* 80151CA4  FC 00 00 32 */	fmul f0, f0, f0
/* 80151CA8  FC 01 00 32 */	fmul f0, f1, f0
/* 80151CAC  FC 03 00 28 */	fsub f0, f3, f0
/* 80151CB0  FC 02 00 32 */	fmul f0, f2, f0
/* 80151CB4  FC 41 00 32 */	fmul f2, f1, f0
/* 80151CB8  FC 40 10 18 */	frsp f2, f2
/* 80151CBC  48 00 00 90 */	b lbl_80151D4C
lbl_80151CC0:
/* 80151CC0  C8 02 9A 18 */	lfd f0, lit_4725(r2)
/* 80151CC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80151CC8  40 80 00 10 */	bge lbl_80151CD8
/* 80151CCC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80151CD0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80151CD4  48 00 00 78 */	b lbl_80151D4C
lbl_80151CD8:
/* 80151CD8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80151CDC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80151CE0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80151CE4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80151CE8  7C 03 00 00 */	cmpw r3, r0
/* 80151CEC  41 82 00 14 */	beq lbl_80151D00
/* 80151CF0  40 80 00 40 */	bge lbl_80151D30
/* 80151CF4  2C 03 00 00 */	cmpwi r3, 0
/* 80151CF8  41 82 00 20 */	beq lbl_80151D18
/* 80151CFC  48 00 00 34 */	b lbl_80151D30
lbl_80151D00:
/* 80151D00  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80151D04  41 82 00 0C */	beq lbl_80151D10
/* 80151D08  38 00 00 01 */	li r0, 1
/* 80151D0C  48 00 00 28 */	b lbl_80151D34
lbl_80151D10:
/* 80151D10  38 00 00 02 */	li r0, 2
/* 80151D14  48 00 00 20 */	b lbl_80151D34
lbl_80151D18:
/* 80151D18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80151D1C  41 82 00 0C */	beq lbl_80151D28
/* 80151D20  38 00 00 05 */	li r0, 5
/* 80151D24  48 00 00 10 */	b lbl_80151D34
lbl_80151D28:
/* 80151D28  38 00 00 03 */	li r0, 3
/* 80151D2C  48 00 00 08 */	b lbl_80151D34
lbl_80151D30:
/* 80151D30  38 00 00 04 */	li r0, 4
lbl_80151D34:
/* 80151D34  2C 00 00 01 */	cmpwi r0, 1
/* 80151D38  40 82 00 10 */	bne lbl_80151D48
/* 80151D3C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80151D40  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80151D44  48 00 00 08 */	b lbl_80151D4C
lbl_80151D48:
/* 80151D48  FC 40 08 90 */	fmr f2, f1
lbl_80151D4C:
/* 80151D4C  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 80151D50  48 11 59 25 */	bl cM_atan2s__Fff
/* 80151D54  7C 03 00 D0 */	neg r0, r3
/* 80151D58  7C 1D 07 34 */	extsh r29, r0
/* 80151D5C  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 80151D60  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 80151D64  48 11 59 11 */	bl cM_atan2s__Fff
/* 80151D68  7C 7F 1B 78 */	mr r31, r3
/* 80151D6C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80151D70  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80151D74  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80151D78  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80151D7C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80151D80  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80151D84  38 61 00 10 */	addi r3, r1, 0x10
/* 80151D88  48 1F 53 B1 */	bl PSVECSquareMag
/* 80151D8C  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80151D90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80151D94  40 81 00 58 */	ble lbl_80151DEC
/* 80151D98  FC 00 08 34 */	frsqrte f0, f1
/* 80151D9C  C8 82 9A 08 */	lfd f4, lit_4723(r2)
/* 80151DA0  FC 44 00 32 */	fmul f2, f4, f0
/* 80151DA4  C8 62 9A 10 */	lfd f3, lit_4724(r2)
/* 80151DA8  FC 00 00 32 */	fmul f0, f0, f0
/* 80151DAC  FC 01 00 32 */	fmul f0, f1, f0
/* 80151DB0  FC 03 00 28 */	fsub f0, f3, f0
/* 80151DB4  FC 02 00 32 */	fmul f0, f2, f0
/* 80151DB8  FC 44 00 32 */	fmul f2, f4, f0
/* 80151DBC  FC 00 00 32 */	fmul f0, f0, f0
/* 80151DC0  FC 01 00 32 */	fmul f0, f1, f0
/* 80151DC4  FC 03 00 28 */	fsub f0, f3, f0
/* 80151DC8  FC 02 00 32 */	fmul f0, f2, f0
/* 80151DCC  FC 44 00 32 */	fmul f2, f4, f0
/* 80151DD0  FC 00 00 32 */	fmul f0, f0, f0
/* 80151DD4  FC 01 00 32 */	fmul f0, f1, f0
/* 80151DD8  FC 03 00 28 */	fsub f0, f3, f0
/* 80151DDC  FC 02 00 32 */	fmul f0, f2, f0
/* 80151DE0  FC 41 00 32 */	fmul f2, f1, f0
/* 80151DE4  FC 40 10 18 */	frsp f2, f2
/* 80151DE8  48 00 00 90 */	b lbl_80151E78
lbl_80151DEC:
/* 80151DEC  C8 02 9A 18 */	lfd f0, lit_4725(r2)
/* 80151DF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80151DF4  40 80 00 10 */	bge lbl_80151E04
/* 80151DF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80151DFC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80151E00  48 00 00 78 */	b lbl_80151E78
lbl_80151E04:
/* 80151E04  D0 21 00 08 */	stfs f1, 8(r1)
/* 80151E08  80 81 00 08 */	lwz r4, 8(r1)
/* 80151E0C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80151E10  3C 00 7F 80 */	lis r0, 0x7f80
/* 80151E14  7C 03 00 00 */	cmpw r3, r0
/* 80151E18  41 82 00 14 */	beq lbl_80151E2C
/* 80151E1C  40 80 00 40 */	bge lbl_80151E5C
/* 80151E20  2C 03 00 00 */	cmpwi r3, 0
/* 80151E24  41 82 00 20 */	beq lbl_80151E44
/* 80151E28  48 00 00 34 */	b lbl_80151E5C
lbl_80151E2C:
/* 80151E2C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80151E30  41 82 00 0C */	beq lbl_80151E3C
/* 80151E34  38 00 00 01 */	li r0, 1
/* 80151E38  48 00 00 28 */	b lbl_80151E60
lbl_80151E3C:
/* 80151E3C  38 00 00 02 */	li r0, 2
/* 80151E40  48 00 00 20 */	b lbl_80151E60
lbl_80151E44:
/* 80151E44  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80151E48  41 82 00 0C */	beq lbl_80151E54
/* 80151E4C  38 00 00 05 */	li r0, 5
/* 80151E50  48 00 00 10 */	b lbl_80151E60
lbl_80151E54:
/* 80151E54  38 00 00 03 */	li r0, 3
/* 80151E58  48 00 00 08 */	b lbl_80151E60
lbl_80151E5C:
/* 80151E5C  38 00 00 04 */	li r0, 4
lbl_80151E60:
/* 80151E60  2C 00 00 01 */	cmpwi r0, 1
/* 80151E64  40 82 00 10 */	bne lbl_80151E74
/* 80151E68  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80151E6C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80151E70  48 00 00 08 */	b lbl_80151E78
lbl_80151E74:
/* 80151E74  FC 40 08 90 */	fmr f2, f1
lbl_80151E78:
/* 80151E78  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80151E7C  48 11 57 F9 */	bl cM_atan2s__Fff
/* 80151E80  7C 03 00 D0 */	neg r0, r3
/* 80151E84  7C 18 07 34 */	extsh r24, r0
/* 80151E88  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80151E8C  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 80151E90  48 11 57 E5 */	bl cM_atan2s__Fff
/* 80151E94  1C 1A 00 06 */	mulli r0, r26, 6
/* 80151E98  7C B9 02 14 */	add r5, r25, r0
/* 80151E9C  A8 85 00 34 */	lha r4, 0x34(r5)
/* 80151EA0  7C 18 E8 50 */	subf r0, r24, r29
/* 80151EA4  7C 00 07 34 */	extsh r0, r0
/* 80151EA8  7C 04 02 14 */	add r0, r4, r0
/* 80151EAC  B0 05 00 34 */	sth r0, 0x34(r5)
/* 80151EB0  A8 85 00 36 */	lha r4, 0x36(r5)
/* 80151EB4  7C 03 F8 50 */	subf r0, r3, r31
/* 80151EB8  7C 00 07 34 */	extsh r0, r0
/* 80151EBC  7C 04 02 14 */	add r0, r4, r0
/* 80151EC0  B0 05 00 36 */	sth r0, 0x36(r5)
lbl_80151EC4:
/* 80151EC4  1F 5A 00 06 */	mulli r26, r26, 6
/* 80151EC8  7F 23 CB 78 */	mr r3, r25
/* 80151ECC  7F B9 D2 14 */	add r29, r25, r26
/* 80151ED0  38 9D 00 34 */	addi r4, r29, 0x34
/* 80151ED4  7C BB D2 AE */	lhax r5, r27, r26
/* 80151ED8  A8 DD 00 4C */	lha r6, 0x4c(r29)
/* 80151EDC  A8 FD 00 64 */	lha r7, 0x64(r29)
/* 80151EE0  4B FF F6 F5 */	bl adjustMoveDisAngle__15daNpcF_Lookat_cFRssss
/* 80151EE4  7F 23 CB 78 */	mr r3, r25
/* 80151EE8  38 9D 00 36 */	addi r4, r29, 0x36
/* 80151EEC  7C BB D2 14 */	add r5, r27, r26
/* 80151EF0  A8 A5 00 02 */	lha r5, 2(r5)
/* 80151EF4  A8 DD 00 4E */	lha r6, 0x4e(r29)
/* 80151EF8  A8 FD 00 66 */	lha r7, 0x66(r29)
/* 80151EFC  4B FF F6 D9 */	bl adjustMoveDisAngle__15daNpcF_Lookat_cFRssss
/* 80151F00  2C 1C 00 00 */	cmpwi r28, 0
/* 80151F04  40 80 00 18 */	bge lbl_80151F1C
/* 80151F08  A8 1D 00 36 */	lha r0, 0x36(r29)
/* 80151F0C  2C 00 00 00 */	cmpwi r0, 0
/* 80151F10  40 81 00 0C */	ble lbl_80151F1C
/* 80151F14  38 00 00 00 */	li r0, 0
/* 80151F18  98 1E 00 94 */	stb r0, 0x94(r30)
lbl_80151F1C:
/* 80151F1C  2C 1C 00 00 */	cmpwi r28, 0
/* 80151F20  40 81 00 1C */	ble lbl_80151F3C
/* 80151F24  7C 79 D2 14 */	add r3, r25, r26
/* 80151F28  A8 03 00 36 */	lha r0, 0x36(r3)
/* 80151F2C  2C 00 00 00 */	cmpwi r0, 0
/* 80151F30  40 80 00 0C */	bge lbl_80151F3C
/* 80151F34  38 00 00 00 */	li r0, 0
/* 80151F38  98 1E 00 94 */	stb r0, 0x94(r30)
lbl_80151F3C:
/* 80151F3C  39 61 00 90 */	addi r11, r1, 0x90
/* 80151F40  48 21 02 D5 */	bl _restgpr_24
/* 80151F44  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80151F48  7C 08 03 A6 */	mtlr r0
/* 80151F4C  38 21 00 90 */	addi r1, r1, 0x90
/* 80151F50  4E 80 00 20 */	blr 
