lbl_8097DABC:
/* 8097DABC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8097DAC0  7C 08 02 A6 */	mflr r0
/* 8097DAC4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8097DAC8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8097DACC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8097DAD0  7C 7E 1B 78 */	mr r30, r3
/* 8097DAD4  88 03 0A C6 */	lbz r0, 0xac6(r3)
/* 8097DAD8  28 00 00 00 */	cmplwi r0, 0
/* 8097DADC  41 82 00 10 */	beq lbl_8097DAEC
/* 8097DAE0  4B 82 20 50 */	b dKy_getDarktime_minute__Fv
/* 8097DAE4  7C 7F 1B 78 */	mr r31, r3
/* 8097DAE8  48 00 00 0C */	b lbl_8097DAF4
lbl_8097DAEC:
/* 8097DAEC  4B 82 1F 50 */	b dKy_getdaytime_minute__Fv
/* 8097DAF0  7C 7F 1B 78 */	mr r31, r3
lbl_8097DAF4:
/* 8097DAF4  88 1E 0A C6 */	lbz r0, 0xac6(r30)
/* 8097DAF8  28 00 00 00 */	cmplwi r0, 0
/* 8097DAFC  41 82 00 0C */	beq lbl_8097DB08
/* 8097DB00  4B 82 1F F4 */	b dKy_getDarktime_hour__Fv
/* 8097DB04  48 00 00 08 */	b lbl_8097DB0C
lbl_8097DB08:
/* 8097DB08  4B 82 1F 08 */	b dKy_getdaytime_hour__Fv
lbl_8097DB0C:
/* 8097DB0C  1C 03 00 3C */	mulli r0, r3, 0x3c
/* 8097DB10  7F FF 02 14 */	add r31, r31, r0
/* 8097DB14  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8097DB18  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8097DB1C  2C 00 00 FF */	cmpwi r0, 0xff
/* 8097DB20  40 82 00 4C */	bne lbl_8097DB6C
/* 8097DB24  88 1E 0B 96 */	lbz r0, 0xb96(r30)
/* 8097DB28  28 00 00 00 */	cmplwi r0, 0
/* 8097DB2C  40 82 03 B0 */	bne lbl_8097DEDC
/* 8097DB30  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8097DB34  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8097DB38  41 82 03 A4 */	beq lbl_8097DEDC
/* 8097DB3C  A0 1E 0B 8C */	lhz r0, 0xb8c(r30)
/* 8097DB40  7C 00 F8 00 */	cmpw r0, r31
/* 8097DB44  41 81 00 1C */	bgt lbl_8097DB60
/* 8097DB48  A0 1E 0B 8E */	lhz r0, 0xb8e(r30)
/* 8097DB4C  7C 00 F8 00 */	cmpw r0, r31
/* 8097DB50  40 81 00 10 */	ble lbl_8097DB60
/* 8097DB54  38 00 00 00 */	li r0, 0
/* 8097DB58  98 1E 0B 95 */	stb r0, 0xb95(r30)
/* 8097DB5C  48 00 03 80 */	b lbl_8097DEDC
lbl_8097DB60:
/* 8097DB60  38 00 00 01 */	li r0, 1
/* 8097DB64  98 1E 0B 95 */	stb r0, 0xb95(r30)
/* 8097DB68  48 00 03 74 */	b lbl_8097DEDC
lbl_8097DB6C:
/* 8097DB6C  80 7E 0B 84 */	lwz r3, 0xb84(r30)
/* 8097DB70  28 03 00 00 */	cmplwi r3, 0
/* 8097DB74  40 82 02 88 */	bne lbl_8097DDFC
/* 8097DB78  38 00 00 00 */	li r0, 0
/* 8097DB7C  90 1E 0B 88 */	stw r0, 0xb88(r30)
/* 8097DB80  3C 60 80 98 */	lis r3, s_sub2__FPvPv@ha
/* 8097DB84  38 63 B1 28 */	addi r3, r3, s_sub2__FPvPv@l
/* 8097DB88  7F C4 F3 78 */	mr r4, r30
/* 8097DB8C  4B 6A 37 AC */	b fpcEx_Search__FPFPvPv_PvPv
/* 8097DB90  80 1E 0B 84 */	lwz r0, 0xb84(r30)
/* 8097DB94  28 00 00 00 */	cmplwi r0, 0
/* 8097DB98  41 82 00 38 */	beq lbl_8097DBD0
/* 8097DB9C  88 1E 0A C6 */	lbz r0, 0xac6(r30)
/* 8097DBA0  28 00 00 00 */	cmplwi r0, 0
/* 8097DBA4  41 82 00 10 */	beq lbl_8097DBB4
/* 8097DBA8  4B 82 20 14 */	b dKy_getDarktime_week__Fv
/* 8097DBAC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8097DBB0  48 00 00 08 */	b lbl_8097DBB8
lbl_8097DBB4:
/* 8097DBB4  4B 82 AF 84 */	b dKy_get_dayofweek__Fv
lbl_8097DBB8:
/* 8097DBB8  38 80 00 07 */	li r4, 7
/* 8097DBBC  7C 03 23 96 */	divwu r0, r3, r4
/* 8097DBC0  7C 00 21 D6 */	mullw r0, r0, r4
/* 8097DBC4  7C 00 18 50 */	subf r0, r0, r3
/* 8097DBC8  80 7E 0B 84 */	lwz r3, 0xb84(r30)
/* 8097DBCC  90 03 05 68 */	stw r0, 0x568(r3)
lbl_8097DBD0:
/* 8097DBD0  80 9E 0B 84 */	lwz r4, 0xb84(r30)
/* 8097DBD4  28 04 00 00 */	cmplwi r4, 0
/* 8097DBD8  41 82 02 80 */	beq lbl_8097DE58
/* 8097DBDC  7F C3 F3 78 */	mr r3, r30
/* 8097DBE0  4B FF D7 AD */	bl setSchedule__11daNpcCdn3_cFP15daTagSchedule_c
/* 8097DBE4  80 7E 0B 84 */	lwz r3, 0xb84(r30)
/* 8097DBE8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8097DBEC  54 00 66 3E */	rlwinm r0, r0, 0xc, 0x18, 0x1f
/* 8097DBF0  28 00 00 01 */	cmplwi r0, 1
/* 8097DBF4  40 82 00 A4 */	bne lbl_8097DC98
/* 8097DBF8  80 1E 0B 88 */	lwz r0, 0xb88(r30)
/* 8097DBFC  28 00 00 00 */	cmplwi r0, 0
/* 8097DC00  40 82 00 78 */	bne lbl_8097DC78
/* 8097DC04  28 03 00 00 */	cmplwi r3, 0
/* 8097DC08  41 82 00 70 */	beq lbl_8097DC78
/* 8097DC0C  38 00 00 00 */	li r0, 0
/* 8097DC10  90 1E 0B 88 */	stw r0, 0xb88(r30)
/* 8097DC14  3C 60 80 98 */	lis r3, s_sub1__FPvPv@ha
/* 8097DC18  38 63 AF E0 */	addi r3, r3, s_sub1__FPvPv@l
/* 8097DC1C  7F C4 F3 78 */	mr r4, r30
/* 8097DC20  4B 6A 37 18 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8097DC24  80 BE 0B 88 */	lwz r5, 0xb88(r30)
/* 8097DC28  28 05 00 00 */	cmplwi r5, 0
/* 8097DC2C  41 82 00 4C */	beq lbl_8097DC78
/* 8097DC30  80 7E 0B 84 */	lwz r3, 0xb84(r30)
/* 8097DC34  80 83 05 68 */	lwz r4, 0x568(r3)
/* 8097DC38  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8097DC3C  54 03 A6 3E */	rlwinm r3, r0, 0x14, 0x18, 0x1f
/* 8097DC40  80 05 00 B0 */	lwz r0, 0xb0(r5)
/* 8097DC44  54 00 A6 3E */	rlwinm r0, r0, 0x14, 0x18, 0x1f
/* 8097DC48  7C 00 18 40 */	cmplw r0, r3
/* 8097DC4C  41 81 00 18 */	bgt lbl_8097DC64
/* 8097DC50  38 84 00 01 */	addi r4, r4, 1
/* 8097DC54  38 60 00 07 */	li r3, 7
/* 8097DC58  7C 04 1B 96 */	divwu r0, r4, r3
/* 8097DC5C  7C 00 19 D6 */	mullw r0, r0, r3
/* 8097DC60  7C 80 20 50 */	subf r4, r0, r4
lbl_8097DC64:
/* 8097DC64  38 60 00 07 */	li r3, 7
/* 8097DC68  7C 04 1B 96 */	divwu r0, r4, r3
/* 8097DC6C  7C 00 19 D6 */	mullw r0, r0, r3
/* 8097DC70  7C 00 20 50 */	subf r0, r0, r4
/* 8097DC74  90 05 05 68 */	stw r0, 0x568(r5)
lbl_8097DC78:
/* 8097DC78  7F C3 F3 78 */	mr r3, r30
/* 8097DC7C  80 9E 0B 88 */	lwz r4, 0xb88(r30)
/* 8097DC80  4B FF D7 0D */	bl setSchedule__11daNpcCdn3_cFP15daTagSchedule_c
/* 8097DC84  38 00 00 00 */	li r0, 0
/* 8097DC88  90 1E 0B 88 */	stw r0, 0xb88(r30)
/* 8097DC8C  38 00 00 01 */	li r0, 1
/* 8097DC90  98 1E 0B 95 */	stb r0, 0xb95(r30)
/* 8097DC94  48 00 01 C4 */	b lbl_8097DE58
lbl_8097DC98:
/* 8097DC98  A0 1E 0B 8C */	lhz r0, 0xb8c(r30)
/* 8097DC9C  7C 00 F8 00 */	cmpw r0, r31
/* 8097DCA0  40 80 01 B8 */	bge lbl_8097DE58
/* 8097DCA4  88 1E 0A F4 */	lbz r0, 0xaf4(r30)
/* 8097DCA8  2C 00 00 01 */	cmpwi r0, 1
/* 8097DCAC  40 82 00 14 */	bne lbl_8097DCC0
/* 8097DCB0  80 7E 0A D8 */	lwz r3, 0xad8(r30)
/* 8097DCB4  A0 63 00 00 */	lhz r3, 0(r3)
/* 8097DCB8  38 03 FF FF */	addi r0, r3, -1
/* 8097DCBC  48 00 00 08 */	b lbl_8097DCC4
lbl_8097DCC0:
/* 8097DCC0  38 00 00 00 */	li r0, 0
lbl_8097DCC4:
/* 8097DCC4  80 7E 0A D8 */	lwz r3, 0xad8(r30)
/* 8097DCC8  80 63 00 08 */	lwz r3, 8(r3)
/* 8097DCCC  54 00 23 36 */	rlwinm r0, r0, 4, 0xc, 0x1b
/* 8097DCD0  7C 83 02 14 */	add r4, r3, r0
/* 8097DCD4  80 64 00 04 */	lwz r3, 4(r4)
/* 8097DCD8  80 04 00 08 */	lwz r0, 8(r4)
/* 8097DCDC  90 61 00 20 */	stw r3, 0x20(r1)
/* 8097DCE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8097DCE4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8097DCE8  90 01 00 28 */	stw r0, 0x28(r1)
/* 8097DCEC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8097DCF0  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8097DCF4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8097DCF8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8097DCFC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8097DD00  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8097DD04  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8097DD08  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 8097DD0C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8097DD10  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 8097DD14  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8097DD18  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 8097DD1C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8097DD20  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 8097DD24  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8097DD28  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 8097DD2C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8097DD30  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 8097DD34  88 1E 0A F4 */	lbz r0, 0xaf4(r30)
/* 8097DD38  2C 00 00 01 */	cmpwi r0, 1
/* 8097DD3C  40 82 00 14 */	bne lbl_8097DD50
/* 8097DD40  80 7E 0A D8 */	lwz r3, 0xad8(r30)
/* 8097DD44  A0 63 00 00 */	lhz r3, 0(r3)
/* 8097DD48  38 03 FF FF */	addi r0, r3, -1
/* 8097DD4C  48 00 00 08 */	b lbl_8097DD54
lbl_8097DD50:
/* 8097DD50  38 00 00 00 */	li r0, 0
lbl_8097DD54:
/* 8097DD54  80 DE 0A D8 */	lwz r6, 0xad8(r30)
/* 8097DD58  80 A6 00 08 */	lwz r5, 8(r6)
/* 8097DD5C  54 00 23 36 */	rlwinm r0, r0, 4, 0xc, 0x1b
/* 8097DD60  7C 85 02 14 */	add r4, r5, r0
/* 8097DD64  80 64 00 04 */	lwz r3, 4(r4)
/* 8097DD68  80 04 00 08 */	lwz r0, 8(r4)
/* 8097DD6C  90 61 00 08 */	stw r3, 8(r1)
/* 8097DD70  90 01 00 0C */	stw r0, 0xc(r1)
/* 8097DD74  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8097DD78  90 01 00 10 */	stw r0, 0x10(r1)
/* 8097DD7C  38 81 00 08 */	addi r4, r1, 8
/* 8097DD80  88 1E 0A F4 */	lbz r0, 0xaf4(r30)
/* 8097DD84  2C 00 00 01 */	cmpwi r0, 1
/* 8097DD88  40 82 00 10 */	bne lbl_8097DD98
/* 8097DD8C  A0 66 00 00 */	lhz r3, 0(r6)
/* 8097DD90  38 03 FF FF */	addi r0, r3, -1
/* 8097DD94  48 00 00 08 */	b lbl_8097DD9C
lbl_8097DD98:
/* 8097DD98  38 00 00 00 */	li r0, 0
lbl_8097DD9C:
/* 8097DD9C  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8097DDA0  38 03 FF FF */	addi r0, r3, -1
/* 8097DDA4  54 00 23 36 */	rlwinm r0, r0, 4, 0xc, 0x1b
/* 8097DDA8  7C A5 02 14 */	add r5, r5, r0
/* 8097DDAC  80 65 00 04 */	lwz r3, 4(r5)
/* 8097DDB0  80 05 00 08 */	lwz r0, 8(r5)
/* 8097DDB4  90 61 00 14 */	stw r3, 0x14(r1)
/* 8097DDB8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8097DDBC  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8097DDC0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8097DDC4  38 61 00 14 */	addi r3, r1, 0x14
/* 8097DDC8  4B 8F 2E 74 */	b cLib_targetAngleY__FRC3VecRC3Vec
/* 8097DDCC  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 8097DDD0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8097DDD4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8097DDD8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8097DDDC  B0 1E 04 B6 */	sth r0, 0x4b6(r30)
/* 8097DDE0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8097DDE4  B0 1E 04 CA */	sth r0, 0x4ca(r30)
/* 8097DDE8  80 7E 0A D8 */	lwz r3, 0xad8(r30)
/* 8097DDEC  A0 63 00 00 */	lhz r3, 0(r3)
/* 8097DDF0  38 03 FF FF */	addi r0, r3, -1
/* 8097DDF4  90 1E 0A F0 */	stw r0, 0xaf0(r30)
/* 8097DDF8  48 00 00 60 */	b lbl_8097DE58
lbl_8097DDFC:
/* 8097DDFC  88 1E 0B 95 */	lbz r0, 0xb95(r30)
/* 8097DE00  28 00 00 00 */	cmplwi r0, 0
/* 8097DE04  41 82 00 54 */	beq lbl_8097DE58
/* 8097DE08  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8097DE0C  54 00 66 3E */	rlwinm r0, r0, 0xc, 0x18, 0x1f
/* 8097DE10  28 00 00 01 */	cmplwi r0, 1
/* 8097DE14  41 82 00 44 */	beq lbl_8097DE58
/* 8097DE18  88 1E 0A C6 */	lbz r0, 0xac6(r30)
/* 8097DE1C  28 00 00 00 */	cmplwi r0, 0
/* 8097DE20  41 82 00 10 */	beq lbl_8097DE30
/* 8097DE24  4B 82 1D 98 */	b dKy_getDarktime_week__Fv
/* 8097DE28  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8097DE2C  48 00 00 08 */	b lbl_8097DE34
lbl_8097DE30:
/* 8097DE30  4B 82 AD 08 */	b dKy_get_dayofweek__Fv
lbl_8097DE34:
/* 8097DE34  80 9E 0B 84 */	lwz r4, 0xb84(r30)
/* 8097DE38  80 04 05 68 */	lwz r0, 0x568(r4)
/* 8097DE3C  7C 00 18 00 */	cmpw r0, r3
/* 8097DE40  40 82 00 18 */	bne lbl_8097DE58
/* 8097DE44  A0 1E 0B 8C */	lhz r0, 0xb8c(r30)
/* 8097DE48  7C 00 F8 00 */	cmpw r0, r31
/* 8097DE4C  41 81 00 0C */	bgt lbl_8097DE58
/* 8097DE50  38 00 00 00 */	li r0, 0
/* 8097DE54  98 1E 0B 95 */	stb r0, 0xb95(r30)
lbl_8097DE58:
/* 8097DE58  80 1E 0B 88 */	lwz r0, 0xb88(r30)
/* 8097DE5C  28 00 00 00 */	cmplwi r0, 0
/* 8097DE60  40 82 00 7C */	bne lbl_8097DEDC
/* 8097DE64  80 1E 0B 84 */	lwz r0, 0xb84(r30)
/* 8097DE68  28 00 00 00 */	cmplwi r0, 0
/* 8097DE6C  41 82 00 70 */	beq lbl_8097DEDC
/* 8097DE70  38 00 00 00 */	li r0, 0
/* 8097DE74  90 1E 0B 88 */	stw r0, 0xb88(r30)
/* 8097DE78  3C 60 80 98 */	lis r3, s_sub1__FPvPv@ha
/* 8097DE7C  38 63 AF E0 */	addi r3, r3, s_sub1__FPvPv@l
/* 8097DE80  7F C4 F3 78 */	mr r4, r30
/* 8097DE84  4B 6A 34 B4 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8097DE88  80 BE 0B 88 */	lwz r5, 0xb88(r30)
/* 8097DE8C  28 05 00 00 */	cmplwi r5, 0
/* 8097DE90  41 82 00 4C */	beq lbl_8097DEDC
/* 8097DE94  80 7E 0B 84 */	lwz r3, 0xb84(r30)
/* 8097DE98  80 83 05 68 */	lwz r4, 0x568(r3)
/* 8097DE9C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8097DEA0  54 03 A6 3E */	rlwinm r3, r0, 0x14, 0x18, 0x1f
/* 8097DEA4  80 05 00 B0 */	lwz r0, 0xb0(r5)
/* 8097DEA8  54 00 A6 3E */	rlwinm r0, r0, 0x14, 0x18, 0x1f
/* 8097DEAC  7C 00 18 40 */	cmplw r0, r3
/* 8097DEB0  41 81 00 18 */	bgt lbl_8097DEC8
/* 8097DEB4  38 84 00 01 */	addi r4, r4, 1
/* 8097DEB8  38 60 00 07 */	li r3, 7
/* 8097DEBC  7C 04 1B 96 */	divwu r0, r4, r3
/* 8097DEC0  7C 00 19 D6 */	mullw r0, r0, r3
/* 8097DEC4  7C 80 20 50 */	subf r4, r0, r4
lbl_8097DEC8:
/* 8097DEC8  38 60 00 07 */	li r3, 7
/* 8097DECC  7C 04 1B 96 */	divwu r0, r4, r3
/* 8097DED0  7C 00 19 D6 */	mullw r0, r0, r3
/* 8097DED4  7C 00 20 50 */	subf r0, r0, r4
/* 8097DED8  90 05 05 68 */	stw r0, 0x568(r5)
lbl_8097DEDC:
/* 8097DEDC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8097DEE0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8097DEE4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8097DEE8  7C 08 03 A6 */	mtlr r0
/* 8097DEEC  38 21 00 40 */	addi r1, r1, 0x40
/* 8097DEF0  4E 80 00 20 */	blr 
