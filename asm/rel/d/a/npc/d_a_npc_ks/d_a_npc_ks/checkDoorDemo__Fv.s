lbl_80A49054:
/* 80A49054  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A49058  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A4905C  80 64 5D AC */	lwz r3, 0x5dac(r4)
/* 80A49060  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80A49064  28 00 00 03 */	cmplwi r0, 3
/* 80A49068  40 82 00 18 */	bne lbl_80A49080
/* 80A4906C  A0 04 4F A0 */	lhz r0, 0x4fa0(r4)
/* 80A49070  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80A49074  40 82 00 0C */	bne lbl_80A49080
/* 80A49078  38 60 00 01 */	li r3, 1
/* 80A4907C  4E 80 00 20 */	blr 
lbl_80A49080:
/* 80A49080  38 60 00 00 */	li r3, 0
/* 80A49084  4E 80 00 20 */	blr 
