n, m = map(int, input().split())
x, y, c = map(int, input().split())
k = []
for _ in range(n):
    map1 = list(map(int, input().split()))
    k.append(map1)

dx = [-1, 0, 1, 0]
dy = [0, 1, 0, -1]
k[x][y] = 2
count = 1
def turn():
    global c
    c -= 1
    if c == -1:
        c = 3
turn_time = 0
while True:
    turn()
    nx = x + dx[c]
    ny = y + dy[c]
    if k[nx][ny] == 0:
        x = nx
        y = ny
        k[x][y] = 2
        count += 1
        turn_time = 0
    else:
        turn_time += 1
    if turn_time == 4:
        nx = x - dx[c]
        ny = y - dy[c]
        if k[nx][ny] == 2:
            x = nx
            y = ny
            turn_time = 0
        else:
            break
print(count)
