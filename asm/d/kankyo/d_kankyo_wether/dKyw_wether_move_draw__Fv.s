lbl_8005A0B8:
/* 8005A0B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005A0BC  7C 08 02 A6 */	mflr r0
/* 8005A0C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005A0C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8005A0C8  38 00 00 00 */	li r0, 0
/* 8005A0CC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8005A0D0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8005A0D4  90 03 12 88 */	stw r0, 0x1288(r3)
/* 8005A0D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8005A0DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8005A0E0  3B E3 4E 00 */	addi r31, r3, 0x4e00
/* 8005A0E4  7F E3 FB 78 */	mr r3, r31
/* 8005A0E8  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha
/* 8005A0EC  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l
/* 8005A0F0  38 84 01 46 */	addi r4, r4, 0x146
/* 8005A0F4  48 30 E8 A1 */	bl strcmp
/* 8005A0F8  2C 03 00 00 */	cmpwi r3, 0
/* 8005A0FC  41 82 00 10 */	beq lbl_8005A10C
/* 8005A100  4B FF E2 19 */	bl wether_move_sun__Fv
/* 8005A104  4B FF E7 91 */	bl wether_move_rain__Fv
/* 8005A108  4B FF E9 F9 */	bl wether_move_snow__Fv
lbl_8005A10C:
/* 8005A10C  4B FF EA 81 */	bl wether_move_star__Fv
/* 8005A110  7F E3 FB 78 */	mr r3, r31
/* 8005A114  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha
/* 8005A118  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l
/* 8005A11C  38 84 01 46 */	addi r4, r4, 0x146
/* 8005A120  48 30 E8 75 */	bl strcmp
/* 8005A124  2C 03 00 00 */	cmpwi r3, 0
/* 8005A128  41 82 00 18 */	beq lbl_8005A140
/* 8005A12C  4B FF ED ED */	bl wether_move_housi__Fv
/* 8005A130  4B FF F4 51 */	bl wether_move_moya__Fv
/* 8005A134  4B FF FD 05 */	bl wether_move_mud__Fv
/* 8005A138  4B FF FE 3D */	bl wether_move_evil__Fv
/* 8005A13C  4B FF F2 A1 */	bl wether_move_odour__Fv
lbl_8005A140:
/* 8005A140  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8005A144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005A148  7C 08 03 A6 */	mtlr r0
/* 8005A14C  38 21 00 10 */	addi r1, r1, 0x10
/* 8005A150  4E 80 00 20 */	blr 
