lbl_8025DB38:
/* 8025DB38  3C 80 80 3A */	lis r4, __vt__12dDlst_base_c@ha
/* 8025DB3C  38 04 6F 88 */	addi r0, r4, __vt__12dDlst_base_c@l
/* 8025DB40  90 03 00 00 */	stw r0, 0(r3)
/* 8025DB44  3C 80 80 3C */	lis r4, __vt__21dDlst_TimerScrnDraw_c@ha
/* 8025DB48  38 04 34 20 */	addi r0, r4, __vt__21dDlst_TimerScrnDraw_c@l
/* 8025DB4C  90 03 00 00 */	stw r0, 0(r3)
/* 8025DB50  38 C0 00 00 */	li r6, 0
/* 8025DB54  98 C3 03 E2 */	stb r6, 0x3e2(r3)
/* 8025DB58  98 C3 03 DD */	stb r6, 0x3dd(r3)
/* 8025DB5C  90 C3 03 D8 */	stw r6, 0x3d8(r3)
/* 8025DB60  38 00 FF FF */	li r0, -1
/* 8025DB64  90 03 03 CC */	stw r0, 0x3cc(r3)
/* 8025DB68  90 03 03 D0 */	stw r0, 0x3d0(r3)
/* 8025DB6C  90 C3 03 D4 */	stw r6, 0x3d4(r3)
/* 8025DB70  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 8025DB74  38 A4 EB C8 */	addi r5, r4, g_drawHIO@l
/* 8025DB78  88 03 03 DD */	lbz r0, 0x3dd(r3)
/* 8025DB7C  54 00 10 3A */	slwi r0, r0, 2
/* 8025DB80  7C 85 02 14 */	add r4, r5, r0
/* 8025DB84  C0 04 0A BC */	lfs f0, 0xabc(r4)
/* 8025DB88  D0 03 03 B0 */	stfs f0, 0x3b0(r3)
/* 8025DB8C  88 03 03 DD */	lbz r0, 0x3dd(r3)
/* 8025DB90  54 00 10 3A */	slwi r0, r0, 2
/* 8025DB94  7C 85 02 14 */	add r4, r5, r0
/* 8025DB98  C0 04 0A F8 */	lfs f0, 0xaf8(r4)
/* 8025DB9C  D0 03 03 B4 */	stfs f0, 0x3b4(r3)
/* 8025DBA0  88 03 03 DD */	lbz r0, 0x3dd(r3)
/* 8025DBA4  54 00 10 3A */	slwi r0, r0, 2
/* 8025DBA8  7C 85 02 14 */	add r4, r5, r0
/* 8025DBAC  C0 04 0B 34 */	lfs f0, 0xb34(r4)
/* 8025DBB0  D0 03 03 B8 */	stfs f0, 0x3b8(r3)
/* 8025DBB4  88 03 03 DD */	lbz r0, 0x3dd(r3)
/* 8025DBB8  54 00 10 3A */	slwi r0, r0, 2
/* 8025DBBC  7C 85 02 14 */	add r4, r5, r0
/* 8025DBC0  C0 04 0B 70 */	lfs f0, 0xb70(r4)
/* 8025DBC4  D0 03 03 BC */	stfs f0, 0x3bc(r3)
/* 8025DBC8  98 C3 03 DE */	stb r6, 0x3de(r3)
/* 8025DBCC  98 C3 03 DF */	stb r6, 0x3df(r3)
/* 8025DBD0  98 C3 03 E0 */	stb r6, 0x3e0(r3)
/* 8025DBD4  38 00 00 01 */	li r0, 1
/* 8025DBD8  98 03 03 E1 */	stb r0, 0x3e1(r3)
/* 8025DBDC  4E 80 00 20 */	blr 
