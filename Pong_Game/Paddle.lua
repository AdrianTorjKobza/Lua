Paddle = Class{}

function Paddle:init(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height

    self.dy = 0
end

function Paddle:update(dt)
    if self.dy < 0 then
        self.y = math.max(0, self.y + self.dy * dt)
    elseif self.dy > 0 then
        self.y = math.min(VIRTUAL_HEIGHT - 48, self.y + self.dy * dt)
    end
end

function Paddle:render()
    love.graphics.setColor(137 / 255, 221 / 255, 255 / 255)
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end